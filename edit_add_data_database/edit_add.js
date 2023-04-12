const body=require('body-parser');
const {query}=require('express');
var express=require('express');
const util=require('util');
const{all}=require('express/lib/application');
var app=express();
app.use(body.urlencoded({extended:false}))
const mysql=require("mysql2");

app.set('view engine','ejs');
var conn=mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "excel_database"
})
const query1=util.promisify(conn.query).bind(conn)
conn.connect((err)=>{
    if(err){console.log(err);}
    console.log("Success");
})

app.get("/table",async(req,res)=>{
    var data= await query1(`Select * from student_table`);
    res.render('edit_add.ejs',{data});
})


app.get("/add",async(req,res)=>{
    console.log('hello');
    var id=req.query.id;
    var fname=req.query.fname;
    var lname=req.query.lname;
    var city=req.query.city;
    var email=req.query.email;
    var contact=req.query.contact;

    await query1(`update student_table set std_fname='${fname}',std_lname='${lname}',city='${city}',email='${email}',contact='${contact}' where std_id='${id}'`)
})

app.post("/insertdata",async(req,res)=>{
 
    var fname=req.body.fname;
    var lname=req.body.lname;
    var city=req.body.city;
    var email=req.body.email;
    var contact=req.body.contact;

    var insert1=await query1(`insert into student_table(std_fname,std_lname,city,email,contact) values ('${fname}','${lname}','${city}','${email}','${contact}');`)

})

app.post("/saveall",async(req,res)=>{
    console.log("Hi");
    
    var id=req.body.id;
    var fname=req.body.fname||"";
    var lname=req.body.lname;
    var city=req.body.city;
    var email=req.body.email;
    var contact=req.body.contact;
    for(i=0;i<fname.length;i++){
        if(!id[i] && fname[i].trim()!=='' && lname[i].trim()!=='' && city[i].trim()!=='' && email[i].trim()!=='' && contact[i].trim()!==''){
            await query1(`insert into student_table(std_fname,std_lname,city,email,contact) values ('${fname[i]}','${lname[i]}','${city[i]}','${email[i]}','${contact[i]}');`)
        }
        else{
            await query1(`update student_table set std_fname='${fname[i]}',std_lname='${lname[i]}',city='${city[i]}',email='${email[i]}',contact='${contact[i]}' where std_id='${id[i]}'`)
        }
    }


})
app.listen(9091);

