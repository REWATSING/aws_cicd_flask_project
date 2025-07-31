from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, AWS CI/CD Pipeline with Python!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
try:
    from awslambdaric import lambda_handler
    from mangum import Mangum
    handler = Mangum(app)
    lambda_handler = handler
except ImportError:
    pass

