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

app.get("/getdata",async (req,res)=>{
    var totaldata= await query1(`select * from register;`);
    res.send(totaldata);
})


app.get("/register",async(req,res)=>{
    var token=req.cookies.jwtTokens;
    if(token){
        return res.redirect("welcomepage")
    }
    res.render('registerpage.ejs');
    
})

app.get("/login",async(req,res)=>{
    var token=req.cookies.jwtTokens
    if(token){
        return res.redirect("welcomepage")
    }else{
    }
    res.render('loginpage.ejs');
})

app.get("/welcomepage",async(req,res)=>{
    var token=req.cookies.jwtTokens
    var tokenData=jwt.verify(token,"harsh");
    res.render('welcomepage.ejs',{tokenData});
})

app.listen(8099);

app.post("/data",async(req,res)=>{
    var username=req.body.username;
    var email=req.body.email;
    var password=req.body.password;
    var hashpass=await bcrypt.hash(password,10)

    var activation_data='0';
    // console.log(req.body);
    // console.log("hello")
    // console.log(username);
    // console.log(email);
    // console.log(password);
    // console.log(hashpass);

    var insert= await query1(`insert into register(username,email,password,activation_data) values('${username}','${email}','${hashpass}','${activation_data}');`)
    res.send({data1:"dahdushdfyughsyuhsyghfyu"});

})

app.post("/logindata",async(req,res)=>{
    var email=req.body.email;
    var password=req.body.password;
    var result=  await query1(`Select * from register where email='${email}' and activation_data='1';`)
    var data;
    console.log(result);
    if(result==""){
        console.log("hello")
       return res.render("loginpage.ejs");
    }

    if(email.length==0 && password.length==0){
        return res.render("loginpage.ejs");
    }

    for(var i=0;i<result.length;i++){
        data=await bcrypt.compare(password,result[i].password);
        console.log(data);
    }
    if(data){
        jwtToken=jwt.sign(result[0],"harsh")
        res.cookie("jwtTokens",jwtToken);
        res.redirect('/welcomepage');
        
    }
    else{
        res.render('loginpage.ejs')

    }
    // res.render('welcomepage.ejs',{tokenData});
    
    // console.log(tokenData);

    
   
})


app.get("/activate",async(req,res)=>{
    var username=req.query.username;
    console.log("harsh",username)

    var query=await query1(`update register set activation_data=1 where username='${username}';`)


    res.redirect("/login");
} 
)


app.get("/act",(req,res)=>{
    let username = req.query.user || "";
    res.render("activate.ejs",{username})
})

app.post("/logout",(req,res)=>{
    res.clearCookie("jwtTokens")
    //res.render("login")
    res.redirect("/login")
})


app.get('/tic_tac_toe',(req,res)=>{
    var token=req.cookies.jwtTokens;
    if(token){
        return res.render("tic_tac_toe.ejs")
    }
    res.render('loginpage.ejs');


    // res.render('tic_tac_toe.ejs');
})

app.get('/kukus_cube',(req,res)=>{
    var token=req.cookies.jwtTokens;
    if(token){
        return res.render("kukus_cube.ejs")
    }
    res.render('loginpage.ejs');
    // res.render('kukus_cube.ejs');
})

app.get('/calculator',(req,res)=>{
    var token=req.cookies.jwtTokens;
    if(token){
        return res.render("calculator.ejs")
    }
    res.render('loginpage.ejs');
    // res.render('kukus_cube.ejs');
})

app.get('/html_css_project1',(req,res)=>{
    var token=req.cookies.jwtTokens;
    if(token){
        return res.render("html_css_project1.ejs")
    }
    res.render('loginpage.ejs');
    // res.render('html_css_project1.ejs');
})

app.get('/html_css_project2',(req,res)=>{
    var token=req.cookies.jwtTokens;
    if(token){
        return res.render("html_css_project2.ejs")
    }
    res.render('loginpage.ejs');
    // res.render('html_css_project2.ejs');
})
