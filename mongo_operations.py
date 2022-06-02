from pydoc import cli
from pymongo import MongoClient
import pandas as pd

client = MongoClient("localhost", 27017)
print("\n Connected to ", client)
def ShowDB():
    print("\n MongoDb Databases ")
    data = pd.DataFrame(list(client.list_databases()))
    print(data)
'''
print("\n Collections List ")
mydatabase = client.Test
data = pd.DataFrame(list(mydatabase.list_collection_names()))
print(data)
'''
def main():
    choice = """ 
      1 : Show Databases
      2 : Create Database 
      3 : Show Collections
      4 : Create Collections 
      5 : Find Doucuments 
     """
    print(choice)
    Option = input("Please Choose a option:")
    Option = int(Option)
    try:
        if Option == 1:
            ShowDB()
    except:
        print("Sorry something went wrong !")
    finally:
        main()
main()

