# RentACar-JavaProject

#Clone from git:
https://github.com/Personal-Meriton/RentACar-JavaProject.git



#How to run This Project
1. Import database from /rentacar/rentacar.sql
2. Open Project 
3. Go to src/main/com.example.demo/demoApplication.java
4. Run Demo Application

#Endpoint


#Location endpoint

1. URL: http://localhost:9091/location Get all Location - METHOD = GET

Response List of Location Objects

[
    {
        "id": 1,
        "name": "Tetov‘ Qend‘r",
        "city": "Tetov‘",
        "address": "Ilindenska 335, Tetov‘ 1"
    },
    {
        "id": 3,
        "name": "Shkup Qend‘r",
        "city": "Shkup",
        "address": "8 Udarna Brigada, Shkup1"
    }
]



2. URL: http://localhost:9091/location/<id> Get  Location by id - METHOD = GET

{
    "id": 1,
    "name": "Tetov‘ Qend‘r",
    "city": "Tetov‘",
    "address": "Ilindenska 335, Tetov‘ 1"
}


3. URL: http://localhost:9091/location/<id>  Edit location by id- METHOD = PUT
 JSON body Ð location input object

{
    "name": "Tetov‘",
    "city": "Tetov‘",
    "address": "Ilindenska 335, Tetov‘ 1"
}
Response location Object 

{
    "id": 1,
    "name": "Tetov‘",
    "city": "Tetov‘",
    "address": "Ilindenska 335, Tetov‘ 1"
}

4. URL: http://localhost:9091/location/  Add location - METHOD = POST

 JSON body Ð location input object

{
    "name": "Tetov‘",
    "city": "Tetov‘",
    "address": "Ilindenska 335, Tetov‘ 1"
}

   Response Ð Location Object

{
    "id": 4,
    "name": "Tetov‘",
    "city": "Tetov‘",
    "address": "Ilindenska 335, Tetov‘ 1"
}


5. URL: http://localhost:9091/location/<id>  Delete location by id - METHOD = Delete


#Costumer Endpoint

1. URL: http://localhost:9091/costumer Get all Costumer - METHOD = GET


Response :


[
    {
        "id": 6,
        "name": "Besart",
        "surname": "Sherifi",
        "age": 5,
        "email": "bs28746@seeu.edu.mk",
        "phone": "072223211",
        "drln": "sssssssss"
    },
    {
        "id": 8,
        "name": "Meriton",
        "surname": "Ademi",
        "age": 20,
        "email": "ma28727@seeu.edu.mk",
        "phone": "0038972534005",
        "drln": "sssssssss"
    },
    {
        "id": 9,
        "name": "Besart",
        "surname": "Ademi",
        "age": -1,
        "email": "ma28727@seeu.edu.mk",
        "phone": "-1",
        "drln": "sssssssss"
    }
]

2. URL: http://localhost:9091/costumer/<id> Get  Costumer by id - METHOD = GET

Response:

{
    "id": 8,
    "name": "Meriton",
    "surname": "Ademi",
    "age": 20,
    "email": "ma28727@seeu.edu.mk",
    "phone": "0038972534005",
    "drln": "sssssssss"
}

3. URL: http://localhost:9091/costumer/<id> Edit  Costumer by id - METHOD = PUT


JSON Body Ð input costumer object 

{
    
    "name": "Meriton",
    "surname": "Ademi",
    "age": 20,
    "email": "ma28727@seeu.edu.mk",
    "phone": "0038972534005",
    "drln": "sssssssss"
}

Response:

{
    "id": 8,
    "name": "Meriton",
    "surname": "Ademi",
    "age": 20,
    "email": "ma28727@seeu.edu.mk",
    "phone": "0038972534005",
    "drln": "sssssssss"
}


4. URL: http://localhost:9091/costumer/ Add  Costumer- METHOD = POST


JSON Body Ð input costumer object 

{
    
    "name": "Meriton",
    "surname": "Ademi",
    "age": 20,
    "email": "ma28727@seeu.edu.mk",
    "phone": "0038972534005",
    "drln": "sssssssss"
}


Response: 
{
    "id": 10,
    "name": "Meriton",
    "surname": "Ademi",
    "age": 20,
    "email": "ma28727@seeu.edu.mk",
    "phone": "0038972534005",
    "drln": "sssssssss"
}

5. URL: http://localhost:9091/costumer/<id> Delete  Costumer by id - METHOD = Delete


#Vehicle Endpoint 

1. URL: http://localhost:9091/vehicle Get all Vehicle - METHOD = GET

Response:


[
    {
        "id": 15,
        "brand": "Mercedes",
        "model": "SLR",
        "year": 2014,
        "ftype": "Gasoline",
        "milage": "28173",
        "hp": 306,
        "gear": "Automatic",
        "color": "Yellow",
        "plate": "TE0001AA",
        "price": 300.0,
        "locationid": {
            "id": 3,
            "name": "Shkup Qend‘r",
            "city": "Shkup",
            "address": "8 Udarna Brigada, Shkup1"
        }
    },
    {
        "id": 16,
        "brand": "BMW",
        "model": "X5",
        "year": 2016,
        "ftype": "Gasoline ",
        "milage": "98206",
        "hp": 449,
        "gear": "Automatic",
        "color": "Gray",
        "plate": "TE0002AA",
        "price": 100.0,
        "locationid": {
            "id": 1,
            "name": "Tetov‘",
            "city": "Tetov‘",
            "address": "Ilindenska 335, Tetov‘ 1"
        }
    },
    {
        "id": 17,
        "brand": "Audi",
        "model": "TT",
        "year": 2008,
        "ftype": "Gasoline",
        "milage": "149200",
        "hp": 200,
        "gear": "Automatic",
        "color": "Black",
        "plate": "TE0003AA",
        "price": 60.0,
        "locationid": {
            "id": 1,
            "name": "Tetov‘",
            "city": "Tetov‘",
            "address": "Ilindenska 335, Tetov‘ 1"
        }
    },
    
]


2. URL: http://localhost:9091/vehicle/<id> Get  Vehicle by id - METHOD = GET

Reponse:

{
        "id": 15,
        "brand": "Mercedes",
        "model": "SLR",
        "year": 2014,
        "ftype": "Gasoline",
        "milage": "28173",
        "hp": 306,
        "gear": "Automatic",
        "color": "Yellow",
        "plate": "TE0001AA",
        "price": 300.0,
        "locationid": {
            "id": 3,
            "name": "Shkup Qend‘r",
            "city": "Shkup",
            "address": "8 Udarna Brigada, Shkup1"
        }
    }

3. URL: http://localhost:9091/vehicle/<id> Edit  Vehicle by id - METHOD = PUT


JSON Body Ð input costumer object 

{"brand":"Mercedes",
"model":"SLR",
"year":2014,
"ftype":"Gasoline",
"milage":"28173",
"hp":306,
"gear":"Automatic",
"color":"Yellow",
"plate":"TE0001AA",
"price":300.0,
"locationid":{"id":3,"name":"Shkup Qend‘r","city":"Shkup","address":"8 Udarna Brigada, Shkup1"}
}

Response:

{
"id":"20",
"brand":"Mercedes",
"model":"SLR",
"year":2014,
"ftype":"Gasoline",
"milage":"28173",
"hp":306,
"gear":"Automatic",
"color":"Yellow",
"plate":"TE0001AA",
"price":300.0,
"locationid":{"id":3,"name":"Shkup Qend‘r","city":"Shkup","address":"8 Udarna Brigada, Shkup1"}
}


4. URL: http://localhost:9091/vehicle/ ADD  Vehicle - METHOD = POST




JSON Body Ð input costumer object 

{"brand":"Mercedes",
"model":"SLR",
"year":2014,
"ftype":"Gasoline",
"milage":"28173",
"hp":306,
"gear":"Automatic",
"color":"Yellow",
"plate":"TE0001AA",
"price":300.0,
"locationid":{"id":3,"name":"Shkup Qend‘r","city":"Shkup","address":"8 Udarna Brigada, Shkup1"}
}










Response:

{
    "id": 32,
    "brand": "Mercedes",
    "model": "SLR",
    "year": 2014,
    "ftype": "Gasoline",
    "milage": "28173",
    "hp": 306,
    "gear": "Automatic",
    "color": "Yellow",
    "plate": "TE0001AA",
    "price": 300.0,
    "locationid": {
        "id": 3,
        "name": "Shkup Qend‘r",
        "city": "Shkup",
        "address": "8 Udarna Brigada, Shkup1"
    }
}


5.  URL: http://localhost:9091/vehicle/filter?pdate=2022-01-01&ddate=2022-02-30&location=1
 filter  Vehicle that are available for a specific pick up and drop down date and is in a specify location - METHOD = GET

Response:

[
    {
        "id": 16,
        "brand": "BMW",
        "model": "X5",
        "year": 2016,
        "ftype": "Gasoline ",
        "milage": "98206",
        "hp": 449,
        "gear": "Automatic",
        "color": "Gray",
        "plate": "TE0002AA",
        "price": 100.0,
        "locationid": {
            "id": 1,
            "name": "Tetov‘",
            "city": "Tetov‘",
            "address": "Ilindenska 335, Tetov‘ 1"
        }
    },
    {
        "id": 18,
        "brand": "Audi",
        "model": "Q3",
        "year": 2013,
        "ftype": "Diesel",
        "milage": "232000",
        "hp": 184,
        "gear": "Manual",
        "color": "Orange",
        "plate": "TE0004AA",
        "price": 50.0,
        "locationid": {
            "id": 1,
            "name": "Tetov‘",
            "city": "Tetov‘",
            "address": "Ilindenska 335, Tetov‘ 1"
        }
    },
    {
        "id": 19,
        "brand": "Mercedes",
        "model": "C CLASS",
        "year": 2018,
        "ftype": "Gasoline",
        "milage": "119213",
        "hp": 245,
        "gear": "Automatic",
        "color": "Blue",
        "plate": "TE0005AA",
        "price": 80.0,
        "locationid": {
            "id": 1,
            "name": "Tetov‘",
            "city": "Tetov‘",
            "address": "Ilindenska 335, Tetov‘ 1"
        }
    }
]

6. URL: http://localhost:9091/vehicle/<id> Delete  Vehicle by id - METHOD = Delete






















