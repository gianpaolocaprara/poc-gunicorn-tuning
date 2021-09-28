import pymongo
from bson import ObjectId
from flask import Flask


app = Flask(__name__)

client = pymongo.MongoClient("mongodb://root:root@mongo:27017/")
db = client['test']


@app.route('/')
def index():
    collection = db.get_collection("test")
    inserted_id: ObjectId = collection.insert_one({"test": "1"}).inserted_id
    inserted_document = collection.find_one({"_id": str(inserted_id)})
    return "ok"
