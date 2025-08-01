from flask import Flask
from mangum import Mangum

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, AWS CI/CD Pipeline with Python!'

# Lambda-compatible handler
lambda_handler = Mangum(app)

