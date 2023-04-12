const body=require('body-parser');
const {query}=require('express');
var express=require('express');
const util=require('util');
const{all}=require('express/lib/application');
const bcrypt=require('bcryptjs')
const cookie=require('cookie-parser')
const jwt=require('jsonwebtoken')
var app=express();
app.use(body.json());
app.use(body.urlencoded({extended:false}))
app.use(express.static('assets'))
app.use(cookie())
const mysql=require("mysql2");
const { resourceLimits } = require('worker_threads');
const cookieParser = require('cookie-parser');
const { clearCookie } = require('express/lib/response');

app.set('view engine','ejs');
var conn=mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "sign_in_up"
})
const query1=util.promisify(conn.query).bind(conn)
conn.connect((err)=>{
    if(err){console.log(err);}
    console.log("Success");
})

app.get("/home",async(req,res)=>{
    
    res.render('homepage.ejs');
    
})




app.get("/kukus_cube",async(req,res)=>{
    
    res.render('kukus_cube.ejs');
    
})

app.listen(9900);