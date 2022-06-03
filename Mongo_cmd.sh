
admin> use PyDb
switched to db PyDb
PyDb> db.Products.insert({"name":"Mobile","Brand":"OnePluse","price":40000})
DeprecationWarning: Collection.insert() is deprecated. Use insertOne, insertMany, or bulkWrite.
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("629902e86dc1e8a5d83659f1") }
}
PyDb> show dbs
PyDb      8.00 KiB
Test     72.00 KiB
admin    40.00 KiB
config  108.00 KiB
local    80.00 KiB
PyDb> show collections
Products
PyDb> db.Products.find()
[
  {
    _id: ObjectId("629902e86dc1e8a5d83659f1"),
    name: 'Mobile',
    Brand: 'OnePluse',
    price: 40000
  }
]
PyDb> db.Products.find().pretty()
[
  {
    _id: ObjectId("629902e86dc1e8a5d83659f1"),
    name: 'Mobile',
    Brand: 'OnePluse',
    price: 40000
  }
]
PyDb>

admin> use PyDb
switched to db PyDb
PyDb> db.Products.insert({"name":"Mobile","Brand":"OnePluse","price":40000})
DeprecationWarning: Collection.insert() is deprecated. Use insertOne, insertMany, or bulkWrite.
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("629902e86dc1e8a5d83659f1") }
}
PyDb> show dbs
PyDb      8.00 KiB
Test     72.00 KiB

admin> use PyDb
switched to db PyDb
PyDb> db.Products.insert({"name":"Mobile","Brand":"Apple","price":90000})
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("629904786dc1e8a5d83659f2") }
}
PyDb> show dbs
PyDb     40.00 KiB
Test     72.00 KiB
admin    40.00 KiB
config  108.00 KiB
local    80.00 KiB
PyDb> show collections
Products
PyDb> db.Products.find()
[
  {
    _id: ObjectId("629902e86dc1e8a5d83659f1"),
    name: 'Mobile',
    Brand: 'OnePluse',
    price: 40000
  },
  {
    _id: ObjectId("629904786dc1e8a5d83659f2"),
    name: 'Mobile',
    Brand: 'Apple',
    price: 90000
  }
]
PyDb> db.Products.find().pretty()
[
  {
    _id: ObjectId("629902e86dc1e8a5d83659f1"),
    name: 'Mobile',
    Brand: 'OnePluse',
    price: 40000
  },
  {
    _id: ObjectId("629904786dc1e8a5d83659f2"),
    name: 'Mobile',
    Brand: 'Apple',
    price: 90000
  }
]
PyDb>

Please enter a MongoDB connection string (Default: mongodb://localhost/):

Current Mongosh Log ID: 629a4296aec53917e4102067
Connecting to:          mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+1.4.2
Using MongoDB:          5.0.8
Using Mongosh:          1.4.2

For mongosh info see: https://docs.mongodb.com/mongodb-shell/

------
   The server generated these startup warnings when booting:
   2022-06-03T21:25:53.282+05:30: Access control is not enabled for the database. Read and write access to data and configuration is unrestricted
------

Warning: Found ~/.mongorc.js, but not ~/.mongoshrc.js. ~/.mongorc.js will not be loaded.
  You may want to copy or rename ~/.mongorc.js to ~/.mongoshrc.js.
test> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  72.00 KiB
local   80.00 KiB
test> use PyDb
switched to db PyDb
PyDb> show collections
Products
PyDb> db.Products.drop()
true
PyDb> show collections

PyDb>