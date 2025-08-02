from flask import Flask, jsonify
from mangum import Mangum

app = Flask(__name__)

@app.route("/")
def index():
    return jsonify({"message": "Hello from Flask Lambda!"})

handler = Mangum(app)

