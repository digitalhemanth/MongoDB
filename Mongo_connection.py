from pymongo import MongoClient
import pandas as pd

client = MongoClient("localhost", 27017, maxPoolSize=50)
'''
db = client.mydb
for db in client.list_databases():
    print(db)
'''
mydatabase = client.Test
data = pd.DataFrame(list(mydatabase.list_collection_names()))
print(data)

mydatabase = client.Test
data = pd.DataFrame(list(mydatabase.list_collection_names()))
print(data)
