from pymongo import MongoClient
import pandas as pd

client = MongoClient("localhost", 27017, maxPoolSize=50)
db = client.mydb
collection = db.angel
data = pd.DataFrame(list(collection.find()))
print(data)