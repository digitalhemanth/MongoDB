
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