
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

PyDb> db.create.Collection("Orders")
TypeError: db.create.Collection is not a function
PyDb> db.createCollection("Orders")
{ ok: 1 }
PyDb> show collections
Orders
PyDb> db.orders.insertOne({"_id":5,"Orderby":"Hemanth Kumar","item_id":202245,"Odate":12-06-2022})
{ acknowledged: true, insertedId: 5 }
PyDb> show collections
orders
Orders
PyDb> db.Orders.insertOne({"_id":5,"Orderby":"Hemanth Kumar","item_id":202245,"Odate":12-06-2022})
{ acknowledged: true, insertedId: 5 }
PyDb> db.orders.Remove()
TypeError: db.orders.Remove is not a function
PyDb> db.orders.remove()
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
MongoshInvalidInputError: [COMMON-10001] Missing required argument at position 0 (Collection.remove)
PyDb> db.orders.drop()
true
PyDb>

Please enter a MongoDB connection string (Default: mongodb://localhost/):

Current Mongosh Log ID: 629a4296aec53917e4102067
Connecting to:          mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+1.4.2
Using MongoDB:          5.0.8
Using Mongosh:          1.4.2


PyDb> db.Orders.insertOne({"_id":1,"Orderby":"Lohs","item_id":202244,"Odate":12-06-2022})
{ acknowledged: true, insertedId: 1 }
PyDb> db.Orders.find()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 }
]
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 }
]
PyDb>


Please enter a MongoDB connection string (Default: mongodb://localhost/):

Current Mongosh Log ID: 629a4296aec53917e4102067
Connecting to:          mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+1.4.2
Using MongoDB:          5.0.8
Using Mongosh:          1.4.2


PyDb> db.Orders.insertOne({"_id":1,"Orderby":"Lohs","item_id":202244,"Odate":12-06-2022})
{ acknowledged: true, insertedId: 1 }
PyDb> db.Orders.find()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 }
]
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 }
PyDb>
PyDb> db.Orders.insert([{"_id":9,"Orderby":"Surya","item_id":202243,"Odate":12062029},{"_id":8,"Orderby":"Sree","item_id":202242,"Odate":12062029}])
DeprecationWarning: Collection.insert() is deprecated. Use insertOne, insertMany, or bulkWrite.
{ acknowledged: true, insertedIds: { '0': 9, '1': 8 } }
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb>

Please enter a MongoDB connection string (Default: mongodb://localhost/):

Current Mongosh Log ID: 629a4296aec53917e4102067
Connecting to:          mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+1.4.2
Using MongoDB:          5.0.8
Using Mongosh:          1.4.2


PyDb> db.Orders.insertOne({"_id":1,"Orderby":"Lohs","item_id":202244,"Odate":12-06-2022})
{ acknowledged: true, insertedId: 1 }
PyDb> db.Orders.find()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 }
]
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 }
PyDb>
PyDb> db.Orders.insert([{"_id":9,"Orderby":"Surya","item_id":202243,"Odate":12062029},{"_id":8,"Orderby":"Sree","item_id":202242,"Odate":12062029}])
DeprecationWarning: Collection.insert() is deprecated. Use insertOne, insertMany, or bulkWrite.
{ acknowledged: true, insertedIds: { '0': 9, '1': 8 } }
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb> db.Orders.update({"_id":1},{ $set: { "Odate":1206200}}
...
...
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb>  db.Orders.update({"_id":1},{ $set: { "Odate":1206200}})
DeprecationWarning: Collection.update() is deprecated. Use updateOne, updateMany, or bulkWrite.
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: 1206200 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb>  db.Orders.update({"_id":5},{ $set: { "Odate":1206200}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: 1206200 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: 1206200 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb>  db.Orders.update({"_id":1},{ $set: { "Odate":1206200}}



Please enter a MongoDB connection string (Default: mongodb://localhost/):

Current Mongosh Log ID: 629a4296aec53917e4102067
Connecting to:          mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+1.4.2
Using MongoDB:          5.0.8
Using Mongosh:          1.4.2


PyDb> db.Orders.insertOne({"_id":1,"Orderby":"Lohs","item_id":202244,"Odate":12-06-2022})
{ acknowledged: true, insertedId: 1 }
PyDb> db.Orders.find()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 }
]
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 }
PyDb>
PyDb> db.Orders.insert([{"_id":9,"Orderby":"Surya","item_id":202243,"Odate":12062029},{"_id":8,"Orderby":"Sree","item_id":202242,"Odate":12062029}])
DeprecationWarning: Collection.insert() is deprecated. Use insertOne, insertMany, or bulkWrite.
{ acknowledged: true, insertedIds: { '0': 9, '1': 8 } }
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb> db.Orders.update({"_id":1},{ $set: { "Odate":1206200}}
...
...
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: -2016 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb>  db.Orders.update({"_id":1},{ $set: { "Odate":1206200}})
DeprecationWarning: Collection.update() is deprecated. Use updateOne, updateMany, or bulkWrite.
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: -2016 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: 1206200 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb>  db.Orders.update({"_id":5},{ $set: { "Odate":1206200}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
PyDb> db.Orders.find().pretty()
[
  { _id: 5, Orderby: 'Hemanth Kumar', item_id: 202245, Odate: 1206200 },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: 1206200 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb>  db.Orders.update({ $inc: { "Type":"Prime"}})
MongoshInvalidInputError: [COMMON-10001] Missing required argument at position 1 (Collection.update)
PyDb>  db.Orders.updateAll({ $inc: { "Type":"Prime"}})
TypeError: db.Orders.updateAll is not a function
PyDb>  db.Orders.updateall({ $inc: { "Type":"Prime"}})
TypeError: db.Orders.updateall is not a function
PyDb>  db.Orders.update({ }, { $inc: { "Type":"Prime"}})
MongoServerError: Cannot increment with non-numeric argument: {Type: "Prime"}
PyDb>  db.Orders.update({ }, { $set: { "Type":"Prime"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
PyDb> db.Orders.find().pretty()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: 1206200 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb>  db.Orders.update({ },{ $set: { "Type":"Prime"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 0,
  upsertedCount: 0
}
PyDb> db.Orders.find().pretty()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: 1206200 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb>  db.Orders.update({},{ $set: { "Type":"Prime"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 0,
  upsertedCount: 0
}
PyDb> db.Orders.find().pretty()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  { _id: 1, Orderby: 'Lohs', item_id: 202244, Odate: 1206200 },
  { _id: 9, Orderby: 'Surya', item_id: 202243, Odate: 12062029 },
  { _id: 8, Orderby: 'Sree', item_id: 202242, Odate: 12062029 }
]
PyDb>  db.Orders.updateMany({},{ $set: { "Type":"Prime"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 4,
  modifiedCount: 3,
  upsertedCount: 0
}
PyDb> db.Orders.find().pretty()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]



PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb>



PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,


PyDb> db.Products.insert({"_id":202245,"item":"Laptop","Brand":"Lenovo","Prise": 90000})
DeprecationWarning: Collection.insert() is deprecated. Use insertOne, insertMany, or bulkWrite.
{ acknowledged: true, insertedIds: { '0': 202245 } }
PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise": 50000},
...  {"_id":202244,"item":"Watch","Brand":"OnePlus","Prise": 5000},
...  {"_id":202245,"item":"Laptop","Brand":"Lenovo","Prise": 90000}])
{
  acknowledged: true,
  insertedIds: { '0': 202243, '1': 202244, '2': 202245 }
}
PyDb> db.Products.find()
[ { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 } ]
PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Products.drop()
true
PyDb>



PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,

PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple", "Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:65)


PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:64)

PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Product.remove({_id:202243})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 1 }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb>

PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,

PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple", "Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:65)


PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:64)

> 1 | db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
    |                                                                 ^
  2 |


PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Product.remove({_id:202243})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 1 }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({},{"Orderby":1})
[
  { _id: 5, Orderby: 'Hemanth Kumar' },
  { _id: 1, Orderby: 'Lohs' },
  { _id: 9, Orderby: 'Surya' },
  { _id: 8, Orderby: 'Sree' }
]
PyDb>


PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,

PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple", "Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:65)


PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:64)

> 1 | db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
    |                                                                 ^
  2 |


PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Product.remove({_id:202243})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 1 }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> show collections
Orders
Product
PyDb> db.Orders.find().limit(2)
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb>

PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,

PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple", "Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:65)


PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:64)

> 1 | db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
    |                                                                 ^
  2 |


PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Product.remove({_id:202243})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 1 }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> show collections
Orders

PyDb> db.Orders.find({},{"Orderby":1}).limit(2)
[ { _id: 5, Orderby: 'Hemanth Kumar' }, { _id: 1, Orderby: 'Lohs' } ]
PyDb>


PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,

PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple", "Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:65)


PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:64)

> 1 | db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
    |                                                                 ^
  2 |


PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Product.remove({_id:202243})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 1 }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> show collections
Orders

PyDb> db.Orders.find({},{"Orderby":1}).limit(2)
[ { _id: 5, Orderby: 'Hemanth Kumar' }, { _id: 1, Orderby: 'Lohs' } ]
PyDb> db.Orders.find({},{"Orderby":1}).limit(2).pretty()
[ { _id: 5, Orderby: 'Hemanth Kumar' }, { _id: 1, Orderby: 'Lohs' } ]
PyDb> db.Orders.find({},{"Orderby":1}).limit(2).skip(1)
[ { _id: 1, Orderby: 'Lohs' }, { _id: 9, Orderby: 'Surya' } ]
PyDb> db.Orders.find({},{"Orderby":1}).limit(2).skip()
MongoInvalidArgumentError: Operation "skip" requires an integer
PyDb> db.Orders.find({},{"Orderby":1}).limit(2).skip(2)
[ { _id: 9, Orderby: 'Surya' }, { _id: 8, Orderby: 'Sree' } ]
PyDb> db.Orders.find({},{"Orderby":1}).limit(2).skip(1)
[ { _id: 1, Orderby: 'Lohs' }, { _id: 9, Orderby: 'Surya' } ]
PyDb>


PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,

PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple", "Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:65)


PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:64)

> 1 | db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
    |                                                                 ^
  2 |


PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Product.remove({_id:202243})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 1 }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> show collections
Orders

PyDb> db.Orders.find().sort({"Orderby":1})
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find().sort({"item_id":1})
[
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb>


PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,

PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple", "Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:65)


PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:64)

> 1 | db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
    |                                                                 ^
  2 |


PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Product.remove({_id:202243})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 1 }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> show collections
Orders

PyDb> db.Orders.find().sort({"Orderby":1})
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  }
]

PyDb> db.Orders.find().sort({"item_id":-1})
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb>


PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,

PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple", "Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:65)


PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:64)

> 1 | db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
    |                                                                 ^
  2 |


PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Product.remove({_id:202243})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 1 }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> show collections
Orders

PyDb> db.Orders.find().sort({"Orderby":1})
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find().sort({"item_id":1})
[
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find().sort({"item_id":-1})
[
  {

PyDb> db.Orders.createIndex({"item_id":-1})
item_id_-1
PyDb> db.Orders.getIndexes()
[
  { v: 2, key: { _id: 1 }, name: '_id_' },
  { v: 2, key: { item_id: -1 }, name: 'item_id_-1' }
]
PyDb>


PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,

PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple", "Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:65)


PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:64)

> 1 | db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
    |                                                                 ^
  2 |


PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Product.remove({_id:202243})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 1 }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> show collections
Orders

PyDb> db.Orders.find().sort({"Orderby":1})
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find().sort({"item_id":1})
[
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find().sort({"item_id":-1})
[
  {

PyDb> db.Orders.createIndex({"item_id":-1})
item_id_-1
PyDb> db.Orders.getIndexes()
[
  { v: 2, key: { _id: 1 }, name: '_id_' },
  { v: 2, key: { item_id: -1 }, name: 'item_id_-1' }
]
PyDb> db.Orders.dropIndex({"item_id":-1})
{ nIndexesWas: 2, ok: 1 }
PyDb> db.Orders.getIndexes()
[ { v: 2, key: { _id: 1 }, name: '_id_' } ]
PyDb>


PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,

PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple", "Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:65)


PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:64)

> 1 | db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
    |                                                                 ^
  2 |


PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Product.remove({_id:202243})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 1 }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> show collections
Orders

PyDb> db.Orders.find().sort({"Orderby":1})
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find().sort({"item_id":1})
[
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find().sort({"item_id":-1})
[
  {

PyDb> db.Orders.find()
[
  {

PyDb> show collections
Orders
Product
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.aProduct.insert( { _id: 202264, item: 'Watch', Brand: 'OnePlus', Prise: 32000 })
{ acknowledged: true, insertedIds: { '0': 202264 } }
PyDb> db.aProduct.insert( { _id: 202294, item: 'Mobile', Brand: 'OnePlus', Prise: 48000 })
{ acknowledged: true, insertedIds: { '0': 202294 } }
PyDb> db.aProduct.insert( { _id: 202394, item: 'Mobile', Brand: 'Lenovo', Prise: 41000 })
{ acknowledged: true, insertedIds: { '0': 202394 } }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb>


PyDb> show dbs
PyDb    72.00 KiB
Test    72.00 KiB
admin   40.00 KiB
config  36.00 KiB
local   80.00 KiB
PyDb> use PyDb
already on db PyDb
PyDb> show collections
Orders
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find( _id:1)
Uncaught:
SyntaxError: Unexpected token, expected "," (1:19)

> 1 | db.Orders.find( _id:1)
    |                    ^
  2 |

PyDb> db.Orders.find({_id:1})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find({_id: {$in:[1,8]}})
[
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,

PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple", "Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:65)


PyDb> db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
Uncaught:
SyntaxError: Unterminated string constant. (1:64)

> 1 | db.Product.insert([{"_id":202243,"item":"Watch","Brand":"Apple","Prise: 50000},
    |                                                                 ^
  2 |


PyDb> db.Product.find()
[
  { _id: 202243, item: 'Watch', Brand: 'Apple', Prise: 50000 },
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Product.remove({_id:202243})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 1 }
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 }
]
PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {

PyDb> show collections
Orders

PyDb> db.Orders.find().sort({"Orderby":1})
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find().sort({"item_id":1})
[
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  }
]
PyDb> db.Orders.find().sort({"item_id":-1})
[
  {

PyDb> db.Orders.find()
[
  {

PyDb> db.Product.insert( { _id: 202394, item: 'Mobile', Brand: 'Lenovo', Prise: 41000 })
{ acknowledged: true, insertedIds: { '0': 202394 } }
PyDb> db.Product.insert( { _id: 202294, item: 'Mobile', Brand: 'OnePlus', Prise: 48000 })
{ acknowledged: true, insertedIds: { '0': 202294 } }

PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 },
  { _id: 202394, item: 'Mobile', Brand: 'Lenovo', Prise: 41000 },
  { _id: 202294, item: 'Mobile', Brand: 'OnePlus', Prise: 48000 },
  { _id: 202264, item: 'Watch', Brand: 'OnePlus', Prise: 32000 }
]
PyDb> db.Product.aggregate([{$group : { _id: "$item",  counts : {$count : 1}}}])
MongoServerError: $count takes no arguments, i.e. $count:{}
PyDb> db.Product.aggregate([{$group : { _id: "$item",  counts : {$sum : 1}}}])
[
  { _id: 'Mobile', counts: 2 },
  { _id: 'Watch', counts: 2 },
  { _id: 'Laptop', counts: 1 }
]
PyDb> db.Product.aggregate([{$group : { _id: "$item",  counts : {$avg : 1}}}])
[
  { _id: 'Mobile', counts: 1 },
  { _id: 'Watch', counts: 1 },
  { _id: 'Laptop', counts: 1 }
]
PyDb>


test> show dbs
PyDb    216.00 KiB
Test     72.00 KiB
admin    40.00 KiB
config   36.00 KiB
local    80.00 KiB
test> use PyDb
switched to db PyDb
PyDb> show collections
aProduct
Orders
Product
PyDb> db.aProduct.drop()
true
PyDb>

test> show dbs
PyDb    216.00 KiB
Test     72.00 KiB
admin    40.00 KiB
config   36.00 KiB
local    80.00 KiB
test> use PyDb
switched to db PyDb
PyDb> show collections
aProduct
Orders
Product
PyDb> db.aProduct.drop()
true
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 },
  { _id: 202394, item: 'Mobile', Brand: 'Lenovo', Prise: 41000 },
  { _id: 202294, item: 'Mobile', Brand: 'OnePlus', Prise: 48000 },
  { _id: 202264, item: 'Watch', Brand: 'OnePlus', Prise: 32000 }
]
PyDb> db.Product.find({_id:1}).expline()
TypeError: db.Product.find({_id:1}).expline is not a function
PyDb> db.Product.find({item:"Mobile"})..explain()
Uncaught:
SyntaxError: Unexpected token (1:33)

> 1 | db.Product.find({item:"Mobile"})..explain()
    |                                  ^
  2 |

PyDb> db.Product.find({item:"Mobile"}).explain()
{
  explainVersion: '1',
  queryPlanner: {
    namespace: 'PyDb.Product',
    indexFilterSet: false,
    parsedQuery: { item: { '$eq': 'Mobile' } },
    maxIndexedOrSolutionsReached: false,
    maxIndexedAndSolutionsReached: false,
    maxScansToExplodeReached: false,
    winningPlan: {
      stage: 'COLLSCAN',
      filter: { item: { '$eq': 'Mobile' } },
      direction: 'forward'
    },
    rejectedPlans: []
  },
  command: { find: 'Product', filter: { item: 'Mobile' }, '$db': 'PyDb' },
  serverInfo: {
    host: 'LAPTOP-15HARP1Gkk',
    port: 27017,
    version: '5.0.8',
    gitVersion: 'c87e1c23421bf79614baf500fda6622bd90f674e'
  },
  serverParameters: {
    internalQueryFacetBufferSizeBytes: 104857600,
    internalQueryFacetMaxOutputDocSizeBytes: 104857600,
    internalLookupStageIntermediateDocumentMaxSizeBytes: 104857600,
    internalDocumentSourceGroupMaxMemoryBytes: 104857600,
    internalQueryMaxBlockingSortMemoryUsageBytes: 104857600,
    internalQueryProhibitBlockingMergeOnMongoS: 0,
    internalQueryMaxAddToSetBytes: 104857600,
    internalDocumentSourceSetWindowFieldsMaxMemoryBytes: 104857600
  },
  ok: 1
}
PyDb>

test> show dbs
PyDb    216.00 KiB
Test     72.00 KiB
admin    40.00 KiB
config   36.00 KiB
local    80.00 KiB
test> use PyDb
switched to db PyDb
PyDb> show collections
aProduct
Orders
Product
PyDb> db.aProduct.drop()
true
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 },
  { _id: 202394, item: 'Mobile', Brand: 'Lenovo', Prise: 41000 },
  { _id: 202294, item: 'Mobile', Brand: 'OnePlus', Prise: 48000 },
  { _id: 202264, item: 'Watch', Brand: 'OnePlus', Prise: 32000 }
]
PyDb> db.Product.find({_id:1}).expline()
TypeError: db.Product.find({_id:1}).expline is not a function
PyDb> db.Product.find({item:"Mobile"})..explain()
Uncaught:
SyntaxError: Unexpected token (1:33)

> 1 | db.Product.find({item:"Mobile"})..explain()
    |                                  ^
  2 |

PyDb> db.Product.find({item:"Mobile"}).explain()
{
  explainVersion: '1',
  queryPlanner: {
    namespace: 'PyDb.Product',
    indexFilterSet: false,
    parsedQuery: { item: { '$eq': 'Mobile' } },

PyDb> db.Orders.find()
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 1,
    Orderby: 'Lohs',
    item_id: 202244,
    Odate: 1206200,
    Type: 'Prime'
  },
  {
    _id: 9,
    Orderby: 'Surya',
    item_id: 202243,
    Odate: 12062029,
    Type: 'Prime'
  },
  {
    _id: 8,
    Orderby: 'Sree',
    item_id: 202242,
    Odate: 12062029,
    Type: 'Prime'
  }
]
PyDb> db.Orders.update({_id:5},{$set: {'Address':[{'city':'Banglore','pin':5252},{'phone':36236596}]}})
DeprecationWarning: Collection.update() is deprecated. Use updateOne, updateMany, or bulkWrite.
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
PyDb>

test> show dbs
PyDb    216.00 KiB
Test     72.00 KiB
admin    40.00 KiB
config   36.00 KiB
local    80.00 KiB
test> use PyDb
switched to db PyDb
PyDb> show collections
aProduct
Orders
Product
PyDb> db.aProduct.drop()
true
PyDb> db.Product.find()
[
  { _id: 202244, item: 'Watch', Brand: 'OnePlus', Prise: 5000 },
  { _id: 202245, item: 'Laptop', Brand: 'Lenovo', Prise: 90000 },
  { _id: 202394, item: 'Mobile', Brand: 'Lenovo', Prise: 41000 },
  { _id: 202294, item: 'Mobile', Brand: 'OnePlus', Prise: 48000 },
  { _id: 202264, item: 'Watch', Brand: 'OnePlus', Prise: 32000 }
]
PyDb> db.Product.find({_id:1}).expline()
TypeError: db.Product.find({_id:1}).expline is not a function
PyDb> db.Product.find({item:"Mobile"})..explain()
Uncaught:
SyntaxError: Unexpected token (1:33)


PyDb> db.Product.find({item:"Mobile"}).explain()
{
  explainVersion: '1',
  queryPlanner: {
    namespace: 'PyDb.Product',
    indexFilterSet: false,
    parsedQuery: { item: { '$eq': 'Mobile' } },

PyDb> db.Orders.find({_id:5})
[
  {
    _id: 5,
    Orderby: 'Hemanth Kumar',
    item_id: 202245,
    Odate: 1206200,
    Type: 'Prime',
    Address: [ { city: 'Banglore', pin: 5252 }, { phone: 36236596 } ]
  }
]
PyDb> db.Orders.find({_id:5})
