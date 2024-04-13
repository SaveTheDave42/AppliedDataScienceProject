import mysql.connector
from flask import Flask, request, jsonify
import requests
from sklearn.neighbors import NearestNeighbors
import numpy as np

app = Flask(__name__)

# Datenbankverbindung einrichten
db = mysql.connector.connect(
    host="localhost",
    user="user",
    password="password",
    database="realestatepredictor"
)
cursor = db.cursor()

# KNN-Modell vorbereiten
cursor.execute("SELECT id, latitude, longitude FROM homegate")
data = cursor.fetchall()
coordinates = np.array([[float(lat), float(lon)] for _, lat, lon in data])
knn = NearestNeighbors(n_neighbors=1, algorithm='ball_tree')
knn.fit(coordinates)


@app.route('/getCoordinates', methods=['GET'])
def get_coordinates():
    address = request.args.get('address')
    if not address:
        return jsonify({"error": "Missing address parameter"}), 400

    api_key = "AIzaSyATsn7Z8zOmsoHGd8l1-l16v8v8QAs3ZEQ"
    url = f"https://maps.googleapis.com/maps/api/geocode/json?address={address}&key={api_key}"

    response = requests.get(url)
    data = response.json()
    if data['status'] == 'OK':
        coords = data['results'][0]['geometry']['location']
        lat, lng = coords['lat'], coords['lng']
        # Finde das nächste Objekt mit KNN
        _, indices = knn.kneighbors([[lat, lng]])
        closest_id = indices[0][0]
        # Daten des nächstgelegenen Objekts abrufen
        cursor.execute("SELECT * FROM homegate WHERE id = %s", (closest_id,))
        property_data = cursor.fetchone()
        return jsonify({
            "closest_property": property_data,
            "coordinates": coords
        })
    else:
        return jsonify({"error": "Address not found"}), 404


if __name__ == '__main__':
    app.run(debug=True)
