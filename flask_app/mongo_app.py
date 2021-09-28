import os

import pymongo
from flask import Flask

app = Flask(__name__)
client = pymongo.MongoClient(host=os.environ["DB_HOST"],
                             port=int(os.environ["DB_PORT"]),
                             username="root",
                             password="root")

db = client['test']


@app.route('/')
def index():
    collection = db.get_collection("test")
    inserted_id = collection.insert_one({"test": "1"}).inserted_id
    inserted_document = collection.find_one({"_id": inserted_id})
    return inserted_document
