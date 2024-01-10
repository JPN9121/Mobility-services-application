const express = require('express');
const app = express();
const mysql = require('mysql2');
const cors = require('cors');
app.use(cors());
app.use(express.json());


const db = mysql.createConnection({
    user: 'root',
    host: 'localhost',
    password: 'admin',
    database: 'project' 
});


app.post('/driver', (req, res) => {
    console.log(req.body);
    const firstname = req.body.firstname
    const lastName = req.body.lastname
    const username = req.body.userName
    const password = req.body.password
    const mobile = req.body.mobile
    const email = req.body.email
    const VehicleType = req.body.vehicletype
    const VehicleNumber = req.body.vehiclenumber
    const City = req.body.city
    const State = req.body.state
    const Zipcode = req.body.zipcode
    db.query("INSERT INTO driver_table(First_Name,Last_Name,User_Name,User_Password,Mobile_Number,Email,Vehicle_Type,Vehicle_Number,City,State,Zip_Code) VALUES(?,?,?,?,?,?,?,?,?,?,?)",
        [firstname, lastName, username, password, mobile, email, VehicleType, VehicleNumber, City, State, Zipcode],
        (err, result) => {
            if (err) {
                console.log(err)
            } else {
                res.send("values inserted")
            }
        });
});


app.post('/customer', (req, res) => {
    console.log(req.body);
    const firstname = req.body.firstname
    const lastName = req.body.lastname
    const mobile = req.body.mobile

    const username = req.body.userName
    const password = req.body.password

    const email = req.body.email
    const City = req.body.city
    const State = req.body.state
    const Zipcode = req.body.zipcode
    db.query("INSERT INTO customer_table(First_Name,Last_Name,Mobile,UserName,User_Password,Email,City,State,Zip_Code) VALUES(?,?,?,?,?,?,?,?,?)",
        [firstname, lastName, mobile, username, password, email, City, State, Zipcode],
        (err, result) => {
            if (err) {
                console.log(err)
            } else {
                res.send("values inserted")
            }
        });
});


app.post('/driverlogin', (req, res) => {
    console.log(req.body)
    db.query('SELECT * FROM driver_table WHERE User_Name = ? AND User_Password = ?', [req.body.loginusername, req.body.loginpassword],
        (err, result) => {
            console.log(result)
            if (err) {
                console.log(err)
                res.send({ err: err })
            }
            if (result.length > 0) {
                res.send(result);
                console.log(result)
            }
            else {
                res.send({ message: "wrong username and passwod" })
            }

        });
});


app.post('/customerlogin', (req, res) => {
    console.log(req.body)
    db.query('SELECT * FROM customer_table WHERE UserName = ? AND User_Password = ?', [req.body.loginusername, req.body.loginpassword],
        (err, result) => {
            console.log(result)
            if (err) {
                console.log(err)
                res.send({ err: err })
            }
            if (result.length > 0) {
                res.send(result);
                console.log(result)
            }
            else {
                res.send({ message: "wrong username and passwod" })
            }
        });
});


app.listen(3001, () => {
    console.log('server is running')
});