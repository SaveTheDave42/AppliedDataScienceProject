import requests
from bs4 import BeautifulSoup

def scrape_flatfox(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')

    # Assuming each property is in a div with class 'listing-thumb'
    properties = soup.find_all('div', class_='listing-thumb')
    print(properties)

    links = [] # Create an empty list to store the links

    for property in properties:
        a_tags = property.find_all('a')
        for a in a_tags:
            links.append(a['href'])  # Add the href of the 'a' tag to the list
                   # Print all the links
            for link in links:
                print(link)


    for link in links: 
        response = requests.get(link)
        soup = BeautifulSoup(response.text, 'html.parser')

        # listings = soup.find_all('div', class_='fui-stack')
        listings = soup.find_all('table')

        for listing in listings:
            # Find the table with the selling price
            # table = soup.find('table', class_='table table--rows table--fluid table--fixed table--flush')           
            tds = listing.find_all('td') # Find all 'td' elements in the table

            for i, listing in enumerate(listings):
                if i == 0:
                    if len(tds) >= 2:
                        selling_price = tds[1].text.strip() # The selling price is in the second 'td' (index 1), get its text
                        print(selling_price)
                else: 
                    for td in tds:
                        prop_id = td[1].text.strip()
                        rooms = td[3].text.strip()

                print(f'Property ID: {prop_id}, Rooms: {rooms}, Selling Price: {selling_price}')    

 
# Call the function with the URL of the website you want to scrape
scrape_flatfox('https://flatfox.ch/en/search/?east=8.626899&north=47.405045&offer_type=SALE&query=Z%C3%BCrich&south=47.347521&west=8.440174')
