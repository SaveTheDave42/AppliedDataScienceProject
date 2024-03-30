import asyncio
import json
from typing import List, Dict, Literal
from httpx import AsyncClient, Response
from parsel import Selector

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
        return
    next_data_json = json.loads(next_data.strip("window.__INITIAL_STATE__="))
    return next_data_json

async def scrape_search(query_type: Literal["rent", "buy"] = "buy") -> List[Dict]:
    """scrape listing data from homegate search pages"""
    # change the below URL to the desired search but validate it in the browser first
    url = f"https://www.homegate.ch/{query_type}/real-estate/city-zurich/matching-list"
    # scrape the first search page first
    first_page = await client.get(url)
    data = parse_next_data(first_page)["resultList"]["search"]["fullSearch"]["result"]
    search_data = data["listings"]
    # get the number of maximum search pages available
    max_search_pages = data["pageCount"]
    print(f"scraped first search page, remaining ({max_search_pages} search pages)")
    # add the remaining search pages in a scraping list
    other_pages = [client.get(url=str(first_page.url) + f"?ep={page}") for page in range(2, max_search_pages + 1)]
    # scrape the remaining search pages concurrently
    for response in asyncio.as_completed(other_pages):
        data = parse_next_data(await response)
        search_data.extend(data["resultList"]["search"]["fullSearch"]["result"]["listings"])
    print(f"scraped {len(search_data)} property listings from search")
    return search_data

# run the scraping function
if __name__ == "__main__":
    search_data = asyncio.run(scrape_search(
        query_type = "buy",
    ))
    # print(json.dumps(search_data, indent=2))

json_string = json.dumps(search_data, indent=2)
json_data = json.loads(json_string)

for item in json_data:
    id = item.get('id')
    livingSpace = item.get('listings', {}).get('characteristics', {}).get('livingSpace')
    rooms = item.get('listings', {}).get('characteristics', {}).get('numberOfRooms')
    floor = item.get('listings', {}).get('characteristics', {}).get('floor')
    prices = item.get('prices', {})
    buy = prices.get('buy')
    price = buy.get('price') if buy is not None else None
    latitude = item.get('listing', {}).get('address', {}).get('geoCoordinates', {}).get('latitude')
    longitude = item.get('listing', {}).get('address', {}).get('geoCoordinates', {}).get('longitude')
    locality = item.get('listing', {}).get('address', {}).get('locality')
    postalCode = item.get('listing', {}).get('address', {}).get('postalCode')
    street = item.get('listing', {}).get('address', {}).get('street')

    if price is not None: 
        print(f'id: {id}, livingSpace: {livingSpace}, rooms: {rooms}, floor: {floor}, price: {price}, latitude: {latitude}, longitude: {longitude}, locality: {locality}, postalCode: {postalCode}, street: {street}')
    else: 
        print(f'id: {id}, livingSpace: {livingSpace}, rooms: {rooms}, floor: {floor}, price: Not Available, latitude: {latitude}, longitude: {longitude}, locality: {locality}, postalCode: {postalCode}, street: {street}')

    #print(json_data[0])

    # print(item.get('prices'))
    # print(item.get('prices', {}).get('buy'))

    # print(f'id: {id}, price: {price}, latitude: {latitude}, longitude: {longitude}, locality: {locality}, postalCode: {postalCode}, street: {street}')

