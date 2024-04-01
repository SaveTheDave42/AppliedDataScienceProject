# AppliedDataScienceProject

# To run the code, you'll need some packages. Do the following:
conda create --name adsprenv python=3.11
conda activate adspenv
# Navigate to the project directory with cd, where the requirements file is, and do:
pip install -r requirements.txt
conda install ipykernel






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