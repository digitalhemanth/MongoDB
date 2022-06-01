from pymongo import MongoClient
import pandas as pd

client = MongoClient("localhost", 27017, maxPoolSize=50)
'''
db = client.mydb
for db in client.list_databases():
    print(db)
'''
collection = db.mydb
data = pd.DataFrame(list(collection.find()))
print(data)
