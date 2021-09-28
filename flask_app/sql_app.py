import sqlalchemy as db
from flask import Flask

app = Flask(__name__)

engine = db.create_engine('postgres://root:root@postgres:5432/test')
connection = engine.connect()

@app.route('/')
def index():

    return "ok"
