import requests
from bs4 import BeautifulSoup

def scrape_homegate(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')

    # Assuming each property is in a div with class 'property'
    properties = soup.find_all('div')

    for property in properties:
        rooms_living_space_div = property.find('div', class_='HgListingRoomsLivingSpace_roomsLivingSpace_GyVgq')
        if rooms_living_space_div is not None:
            spans = rooms_living_space_div.find_all('span')
            if spans and len(spans) > 1:
                rooms = spans[0].strong.text if spans[0].strong else None
                living_space = spans[1].strong.text if spans[1].strong else None

        price_div = property.find('span', class_='HgListingCard_price_JoPAs')
        price = price_div.string if price_div else None

        address = property.find('address', translate='no')
        address_text = address.string if address else None

        print(f"Price: {price}, Rooms: {rooms}, Living Space: {living_space}, Address: {address_text}")

# Call the function with the URL of the website you want to scrape
scrape_homegate('https://www.homegate.ch/kaufen/immobilien/kanton-zuerich/trefferliste')

#<div class="HgListingRoomsLivingSpace_roomsLivingSpace_GyVgq"><span><strong>4.5</strong> Zimmer </span><span><strong>105m²</strong> Wohnfläche </span></div>

#<span class="HgListingCard_price_JoPAs"> CHF 880’000.– <!----><!----></span>