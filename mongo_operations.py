from pydoc import cli
from pymongo import MongoClient
import pandas as pd

client = MongoClient("localhost", 27017)
print("\n Connected to ", client)
def ShowDB():
    print("\n MongoDb Databases \n")
    data = pd.DataFrame(list(client.list_databases()))
    print(data)

def ShowCollection():
    #database = input("Please Provide Database name : \n")
    print("\n Collections List ")
    mydatabase = client.PyDb
    data = pd.DataFrame(list(mydatabase.list_collection_names()))
    print(data)

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
        if Option == 3:
            ShowCollection()
    except:
        print("Sorry something went wrong !")
    finally:
        main()
main()

