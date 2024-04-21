#pip install Flask requests
from flask import Flask, request, jsonify
import requests

app = Flask(__name__)

@app.route('/getCoordinates', methods=['GET'])
def get_coordinates():
    # Die Adresse aus der Anfrage holen
    address = request.args.get('address')
    if not address:
        return jsonify({"error": "Missing address parameter"}), 400

    # Hier deinen API-Schlüssel für den Geocoding-Dienst einfügen
    api_key = "AIzaSyATsn7Z8zOmsoHGd8l1-l16v8v8QAs3ZEQ"

    # URL für den Geocoding-Dienst vorbereiten (Beispiel für Google Maps Geocoding API)
    url = f"https://maps.googleapis.com/maps/api/geocode/json?address={address}&key={api_key}"

    # Die Anfrage an den Geocoding-Dienst senden
    response = requests.get(url)
    data = response.json()

    # Koordinaten aus der Antwort extrahieren
    if data['status'] == 'OK':
        coordinates = data['results'][0]['geometry']['location']
        return jsonify(coordinates)
    else:
        return jsonify({"error": "Address not found"}), 404

if __name__ == '__main__':
    app.run(debug=True)

#Put in browser: 127.0.0.1:5000/getCoordinates?address=Strasse+Hausnummer,PLZ+Ort