---
> show dbs
Test    0.000GB
admin   0.000GB
config  0.000GB
local   0.000GB
> use Test
switched to db Test
> show collections
python
> db.python.find()
{ "_id" : ObjectId("627128610d86ad967f382c42"), "name" : "Hemanth", "joined" : NumberLong(2022) }
> db.python.find().pretty()
{
        "_id" : ObjectId("627128610d86ad967f382c42"),
        "name" : "Hemanth",
        "joined" : NumberLong(2022)
}
>