from flask import Flask
import json

def create_app():
    app = Flask(__name__)
    return app

app = create_app()

@app.route('/')
def hello():
    return json.dumps({
        'data': "Test"
    })