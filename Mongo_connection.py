from pymongo import MongoClient
import pandas as pd

client = MongoClient("localhost", 27017, maxPoolSize=50)
print("MongoDb DataBases ")
data = pd.DataFrame(list(client.list_databases()))
print(data)
print("\n Collections list ")
mydatabase = client.Test
data = pd.DataFrame(list(mydatabase.list_collection_names()))
print(data)
