import asyncio
import json
import pandas as pd
from typing import List, Dict, Literal
from httpx import AsyncClient, Response
from httpx import ReadTimeout
from parsel import Selector
import mysql.connector
import numpy as np

client = AsyncClient(
    headers={
        # use same headers as a popular web browser (Chrome on Windows in this case)
        "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36",
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
        "Accept-Language": "en-US,en;q=0.9",
    }
)

def parse_next_data(response: Response) -> Dict:
    """parse listing data from homegate search"""
    selector = Selector(response.text)
    # extract data in JSON from script tags
    next_data = selector.xpath("//script[contains(text(),'window.__INITIAL_STATE__')]/text()").get()
    if not next_data:
        return {}  # return an empty dictionary instead of None
    next_data_json = json.loads(next_data.strip("window.__INITIAL_STATE__="))
    return next_data_json

async def scrape_search(query_type: Literal["rent", "buy"] = "buy") -> List[Dict]:
    """scrape listing data from homegate search pages"""
    # change the below URL to the desired search but validate it in the browser first
    url = f"https://www.homegate.ch/{query_type}/real-estate/canton-zurich/matching-list"
    # scrape the first search page first
    first_page = await client.get(url)
    data = parse_next_data(first_page)["resultList"]["search"]["fullSearch"]["result"]
    search_data = data["listings"]
    # get the number of maximum search pages available
    max_search_pages = data["pageCount"]
    print(f"scraped first search page, remaining ({max_search_pages} search pages)")
    # add the remaining search pages in a scraping list
    other_pages = []
    for page in range(2, max_search_pages + 1):
        try:
            other_pages.append(client.get(url=str(first_page.url) + f"?ep={page}", timeout=10.0))  # Increase timeout to 10 seconds
        except ReadTimeout:
            print(f"Timeout when trying to get page {page}, retrying...")
            await asyncio.sleep(2)  # Wait for 2 seconds before retrying
            other_pages.append(client.get(url=str(first_page.url) + f"?ep={page}", timeout=10.0))

    # scrape the remaining search pages concurrently
    for i, response in enumerate(asyncio.as_completed(other_pages), start=2):
        data = parse_next_data(await response)
        search_data.extend(data["resultList"]["search"]["fullSearch"]["result"]["listings"])
        print(f"scraped {len(search_data)} property listings from search")
        # if 15 pages have been scraped, wait for 2 minutes
        if i % 15 == 0:
            print("Waiting for 2 minutes...")
            await asyncio.sleep(120)  # wait for 2 minutes
    return search_data

# run the scraping function
if __name__ == "__main__":
    search_data = asyncio.run(scrape_search(
        query_type = "buy",
    ))
    # print(json.dumps(search_data, indent=2))

json_string = json.dumps(search_data, indent=2)
json_data = json.loads(json_string)

# Specify the columns to include in the DataFrame
columns = ['id', 'listing']
print(json_data)

# Extract the 'listing' data
listing_data = [item['listing'] for item in json_data]

# Extract the 'prices' data
prices_data = []
for item in json_data:
    if 'prices' in item['listing'] and 'buy' in item['listing']['prices']:
        prices_data.append({'id': item['id'], **item['listing']['prices']['buy'], **item['listing']['address'], **item['listing']['characteristics'], **item['listing']['address']['geoCoordinates']})

# Create the DataFrame
df = pd.DataFrame(listing_data)
# Create the DataFrame
df_prices = pd.DataFrame(prices_data)
# Replace 'NaN' values with None
df_prices = df_prices.replace({np.nan: None})

# Set the index of the DataFrame to the 'id' column
df.set_index('id', inplace=True)
# print(df_prices)

#Write data to database
# Create a connection to the database
db = mysql.connector.connect(
    host="localhost",
    user="user",
    password="password",
    port="3306",
    database="realestatepredictor"
)

# Create a cursor object
cursor = db.cursor()

# Convert the DataFrame to a list of dictionaries
data_dict = df_prices.to_dict('records')

# Clear the table before inserting the new data
cursor.execute("DELETE FROM homegate")
db.commit()
print("All entries deleted from 'homegate'.")

# Iterate over the list of dictionaries and insert each one into the MySQL table
for data in data_dict:
    query = "INSERT INTO homegate (homegateid, price, rooms, floor, livingSpace, street, latitude, longitude, locality, postalcode) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    values = (data['id'], data['price'], data['numberOfRooms'], data['floor'], data['livingSpace'], data['street'], data['latitude'], data['longitude'], data['locality'], data['postalCode'])
    cursor.execute(query, values)

# Commit the transaction
db.commit()

# Close the cursor and connection
cursor.close()
db.close()