const body = require('body-parser');
const { query } = require('express');
var express = require('express');
const util = require("util");
const { all } = require('express/lib/application');
var app = express();
app.use(body.urlencoded({ extended: false }))

const mysql = require("mysql2");
const { Console } = require('console');
// const Connection = require('mysql2/typings/mysql/lib/Connection');
app.set('view engine', 'ejs');
var conn = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "job_application_form_database"
});

conn.connect((err) => {
    if (err) { console.log(err); }
    console.log("Success");
});

app.get("/page", (req, res) => {
    res.render('job_application_form.ejs', {});
});



app.get("/form", (req, res) => {
    let status = [];
    let state = [];
    let course = [];
    let prefered_location = [];
    let prefered_department = [];
    let language = [];
    let read = [];
    let write = [];
    let speak = [];
    let technology = [];
    let technology_known = [];

    var fname = req.query.fname;
    var designation = req.query.designation;
    var email = req.query.email;
    var phone = req.query.phone;
    var gender = req.query.gender;
    var relationship_status = req.query.relationship_status;
    var dob = req.query.dob;
    var lname = req.query.lname;
    var address1 = req.query.address1;
    var address2 = req.query.address2;
    var city = req.query.city;
    var state1 = req.query.state;
    var zipcode = req.query.zipcode;
    var course1 = req.query.course;
    var board = req.query.board;
    var passing_year = req.query.passing_year;
    var percentage = req.query.percentage;
    var companyname = req.query.companyname;
    var companydesignation = req.query.designation;
    var from = req.query.from;
    var to = req.query.to;
    var languageknown = req.query.language || 0;
    var readl = req.query.read;
    var writel = req.query.write;
    var speakl = req.query.speak;
    var technologyname = req.query.technology || 0;
    var technologyknown;

    const abcd = [];
    for (let i = 0; i < technologyname.length; i++) {
        abcd.push(req.query['technologyknown' + technologyname[i]]);

    }

    var reference_name1 = req.query.reference_name1;
    var reference_contact1 = req.query.reference_contact1;
    var reference_relation1 = req.query.reference_relation1;
    var reference_name2 = req.query.reference_name2;
    var reference_contact2 = req.query.reference_contact2;
    var reference_relation2 = req.query.reference_relation2;
    var preferedlocation = req.query.prefered_location;
    var notice_period = req.query.notice_period;
    var expected_ctc = req.query.expected_ctc;
    var current_ctc = req.query.current_ctc;
    var prefered_department_preferences = req.query.prefered_department;








    console.log(req.body)
    console.log("designation", designation);
    console.log("fname", fname);
    console.log("email", email);
    console.log("phone", phone);
    console.log("gender", gender);
    console.log("relationship_status", relationship_status);
    console.log("dob", dob);
    console.log("lname", lname);
    console.log("address1", address1);
    console.log("address2", address2);
    console.log("city", city);
    console.log("state1", state1);
    console.log("zipcode", zipcode);
    console.log("course", course1);
    console.log("board", board);
    console.log("passing_year", passing_year);
    console.log("percentage", percentage);
    console.log("companyname", companyname);
    console.log("companydesignation", companydesignation);
    console.log("from", from);
    console.log("to", to);
    console.log("language", languageknown);

    console.log(readl);
    console.log(writel);
    console.log(speakl);


    // console.log("languageknown", languageknown);
    console.log("technologyname", technologyname);
    // console.log("technologyknown", technologyknown);
    console.log("technologyknown", abcd);
    console.log("reference_name1", reference_name1);
    console.log("reference_contact1", reference_contact1);
    console.log("reference_relation1", reference_relation1);
    console.log("reference_name2", reference_name2);
    console.log("reference_contact2", reference_contact2);
    console.log("reference_relation2", reference_relation2);
    console.log("preferedlocation", preferedlocation);
    console.log("notice_period", notice_period);
    console.log("expected_ctc", expected_ctc);
    console.log("current_ctc", current_ctc);
    console.log("prefered_department_preferences", prefered_department_preferences);



    conn.query(`select option_name from option_master where select_id=1;`, (err, result) => {
        if (err) throw err;
        status = result;

    });
    conn.query(`select * from state_master;`, (err, result1) => {
        if (err) throw err;
        state = result1;

    });
    // conn.query(`select option_name from option_master where select_id=2;`, (err, result1) => {
    //     if (err) throw err;
    //     state = result1;

    // });
    conn.query(`select option_name from option_master where select_id=3;`, (err, result2) => {
        if (err) throw err;
        course = result2;


    });
    conn.query(`select option_name from option_master where select_id=4;`, (err, result3) => {
        if (err) throw err;
        prefered_location = result3;

    });
    conn.query(`select option_name from option_master where select_id=5;`, (err, result4) => {
        if (err) throw err;
        prefered_department = result4;

    });
    conn.query(`select option_name from option_master where select_id=6;`, (err, result5) => {
        if (err) throw err;
        language = result5;

    });
    conn.query(`select option_name from option_master where select_id=7;`, (err, result6) => {
        if (err) throw err;
        technology = result6;
        res.render('job_application_form.ejs', { status, state, course, prefered_location, prefered_department, language, technology, technologyknown });

    });


});

app.listen(5011);


app.post("/form", (req, res) => {

    var fname = req.body.fname;
    var designation = req.body.designation1;
    var email = req.body.email;
    var phone = req.body.phone;
    var gender = req.body.gender;
    var relationship_status = req.body.relationship_status;
    var dob = req.body.dob;
    var lname = req.body.lname;
    var address1 = req.body.address1;
    var address2 = req.body.address2;
    var city = req.body.city;
    var state1 = req.body.state;
    var zipcode = req.body.zipcode;
    var course1 = req.body.course;
    var board = req.body.board;
    var passing_year = req.body.passing_year;
    var percentage = req.body.percentage;
   

    conn.query(`insert into candidate_basic_info(candidate_fname,candidate_lname,candidate_designation,candidate_email,candidate_phone_number,candidate_gender,candidate_address1,candidate_address2,candidate_city,candidate_state,candidate_zipcode,candidate_relationship_status,candidate_dob,timestamp) values('${fname}','${lname}','${designation}','${email}','${phone}','${gender}','${address1}','${address2}','${city}','${state1}','${zipcode}','${relationship_status}','${dob}',now());`, (err, result) => {
        if (err) { throw err; }

        let appid = result.insertId;

        // res.send(result);
        if (typeof (course1, board, passing_year, percentage) == "string") {
            conn.query(`insert into candidate_education_info(candidate_id,education_course,education_board,education_passing_year,education_percentage) values('${appid}','${course1}','${board}','${passing_year}','${percentage}');`, (err, result1) => {
                if (err) { throw err; }
                // res.send(result1);
                console.log("data inserted");
            })
        }
        else {

            for (i = 0; i < course1.length; i++) {
                conn.query(`insert into candidate_education_info(candidate_id,education_course,education_board,education_passing_year,education_percentage) values('${appid}','${course1[i]}','${board[i]}','${passing_year[i]}','${percentage[i]}');`, (err, result1) => {
                    if (err) { throw err; }
                    // res.send(result1);
                    console.log("data inserted");
                })
            }
        }



        var companyname = req.body.companyname;
        var companydesignation = req.body.designation;
        var from = req.body.from;
        var to = req.body.to;
        if (typeof (companyname, companydesignation, from, to) == "string") {
            console.log("harsh")
            conn.query(`insert into candidate_work_experience(candidate_id,company_name,company_designation,from_date,from_to) values('${appid}','${companyname}','${companydesignation}','${from}','${to}');`, (err, result2) => {
                if (err) { throw err; }
                // res.send(result2);
                console.log("data inserted");
            })
        }
        else {
            console.log("hi")

            for (i = 0; i < companyname.length; i++) {
                conn.query(`insert into candidate_work_experience(candidate_id,company_name,company_designation,from_date,from_to) values('${appid}','${companyname[i]}','${companydesignation[i]}','${from[i]}','${to[i]}');`, (err, result2) => {
                    if (err) { throw err; }
                    // res.send(result2);
                    console.log("data inserted");
                })
            }
        }

        var preferedlocation = req.body.prefered_location;
        var notice_period = req.body.notice_period;
        var expected_ctc = req.body.expected_ctc;
        var current_ctc = req.body.current_ctc;
        var prefered_department_preferences = req.body.prefered_department;
        conn.query(`insert into preferences(candidate_id,preffered_location,notice_period,expected_ctc,current_ctc,department) values('${appid}','${preferedlocation}','${notice_period}','${expected_ctc}','${current_ctc}','${prefered_department_preferences}');`, (err, result3) => {
            if (err) { throw err; }
        })


    var technologyname = req.body.technology || 0;
    var technologyknown;

    const abcd = [];
    for (let i = 0; i < technologyname.length; i++) {
            abcd.push(req.body['technologyknown' + technologyname[i]]);

    }
    // console.log(abcd);

    if(typeof (technologyname) == "string") {
        conn.query(`insert into technologies_known(candidate_id,technology,technologyknown) values('${appid}','${technologyname}','${abcd}');`,(err,result4)=>{
            if(err) {throw err;}
        })
    }
    else{

        for(i=0;i<abcd.length;i++){
            conn.query(`insert into technologies_known(candidate_id,technology,technologyknown) values('${appid}','${technologyname[i]}','${abcd[i]}');`,(err,result4)=>{
                if(err) {throw err;}
            })
        }
    }



        var languageknown = req.body.language||0 ;
        var readl = req.body.read||'';
        console.log(languageknown);
        console.log(typeof(languageknown));
        var writel = req.body.write||'';
        var speakl = req.body.speak||'';
        console.log("outside if");
        if(typeof(languageknown)=="string"){
            console.log("inside if");
            conn.query(`insert into languages_known(candidate_id,language,language_read,language_write,language_speak) values('${appid}','${languageknown}','${readl.includes(languageknown)?'yes':'no'}','${writel.includes(languageknown)?'yes':'no'}','${speakl.includes(languageknown)?'yes':'no'}');`, (err, result5) => {
                if (err) { throw err; }
                console.log("data inserted 1");
            })
        }
        else{

            for (i = 0; i < languageknown.length; i++) {

                conn.query(`insert into languages_known(candidate_id,language,language_read,language_write,language_speak) values('${appid}','${languageknown[i]}','${readl.includes(languageknown[i])?'yes':'no'}','${writel.includes(languageknown[i])?'yes':'no'}','${speakl.includes(languageknown[i])?'yes':'no'}');`, (err, result1) => {
                    if (err) { throw err; }
                    // res.send(result1);
                    console.log("data inserted 2");
                })

            }
        }

        var reference_name = req.body.reference_name;
        var reference_contact = req.body.reference_contact;
        var reference_relation = req.body.reference_relation;


        for(i=0;i<reference_name.length;i++){
            conn.query(`insert into references1(candidate_id,reference_name,reference_contact,reference_relation) values('${appid}','${reference_name[i]}','${reference_contact[i]}','${reference_relation[i]}');`,(err,result)=>{
                if (err) { throw err; }
            })
        }



        var harsh = '';
        var allrecords;
        var page;
    conn.query(`select * from candidate_basic_info where delete_row is null;`, function (err, data) {
        if (err) throw err;
        res.render('job_application_form_data_show.ejs', { data,harsh,allrecords,page})
    })
})


});

app.get("/getcity", (req, res) => {
    const stateid = req.query.stateid;

    conn.query(`select city_name from city_master where state_id = '${stateid}'`, (err, result1) => {
        if (err) { throw err; }
        console.log("city :::::::::::::::::", result1);
        const city = result1;
        res.send(city);

    })
})



app.get('/search', (req, res) => {

    // Pagination
    let allrecords = 0;
    let limit = 2;
    let offset = 0;

    var harsh = req.query.searchbar || 0;
    console.log("harsh:::::::::::",harsh)
    var fname = "";
    var lname = "";
    var contact = "";
    var email = "";
    var city = "";
    var dob = "";
    let ajax = req.query.ajax || "false"
    
    let page = req.query.page || 1;
    offset = (page - 1) * limit;
    console.log("page:::::::::",page)
    console.log("offset:::::::",offset)
    console.log("ajax::::::::::",ajax)
    for (i = 0; i <= harsh.length; i++) {
        if (harsh.charAt(i) == '^') {
            for (j = i + 1; j <= harsh.length; j++) {
                if (harsh.charAt(j) == '%' || harsh.charAt(j) == '#' || harsh.charAt(j) == '!' || harsh.charAt(j) == '~' || harsh.charAt(j) == '-') {
                    break;
                }
                else {
                    fname += harsh.charAt(j);
                }
            }
        }
        else if (harsh.charAt(i) == '%') {
            for (j = i + 1; j <= harsh.length; j++) {
                if (harsh.charAt(j) == '^' || harsh.charAt(j) == '#' || harsh.charAt(j) == '!' || harsh.charAt(j) == '~' || harsh.charAt(j) == '-') {
                    break;
                }
                else {
                    lname += harsh.charAt(j);
                }
            }
        }
        else if (harsh.charAt(i) == '#') {
            for (j = i + 1; j <= harsh.length; j++) {
                if (harsh.charAt(j) == '^' || harsh.charAt(j) == '%' || harsh.charAt(j) == '!' || harsh.charAt(j) == '~' || harsh.charAt(j) == '-') {
                    break;
                }
                else {
                    contact += harsh.charAt(j);
                }
            }
        }
        else if (harsh.charAt(i) == '!') {
            for (j = i + 1; j <= harsh.length; j++) {
                if (harsh.charAt(j) == '^' || harsh.charAt(j) == '%' || harsh.charAt(j) == '#' || harsh.charAt(j) == '~' || harsh.charAt(j) == '-') {
                    break;
                }
                else {
                    email += harsh.charAt(j);
                }
            }
        }
        else if (harsh.charAt(i) == '~') {
            for (j = i + 1; j <= harsh.length; j++) {
                if (harsh.charAt(j) == '^' || harsh.charAt(j) == '%' || harsh.charAt(j) == '#' || harsh.charAt(j) == '!' || harsh.charAt(j) == '-') {
                    break;
                }
                else {
                    city += harsh.charAt(j);
                }
            }
        }
        else if (harsh.charAt(i) == '-') {
            for (j = i + 1; j <= harsh.length; j++) {
                if (harsh.charAt(j) == '^' || harsh.charAt(j) == '%' || harsh.charAt(j) == '#' || harsh.charAt(j) == '!' || harsh.charAt(j) == '~') {
                    break;
                }
                else {
                    dob += harsh.charAt(j);
                }
            }
        }
    }
    
    conn.query(`Select count(*) as total from candidate_basic_info where delete_row IS NULL and candidate_fname like '%${fname}' and candidate_lname like '%${lname}' and candidate_phone_number like '%${contact}' and candidate_city like '%${city}' and candidate_dob like '%${dob}'`, (err, result1) => {
        console.log("result:::::::",result1)
        allrecords = result1[0].total
        console.log('allrecords*******************',allrecords)
    })

    conn.query(`Select * from candidate_basic_info where delete_row IS NULL and candidate_fname like '%${fname}' and candidate_lname like '%${lname}' and candidate_phone_number like '%${contact}' and candidate_city like '%${city}' and candidate_dob like '%${dob}' limit ${offset},${limit}`, function (error, data1) {
        if (error) throw error;
        console.log("allrecord inside:::::",allrecords)
        allrecords = Math.ceil(allrecords / limit);
        console.log("demo:", allrecords);

        if (ajax == "false")
            res.render("job_application_form_data_show.ejs", { data: data1, harsh, allrecords, page });
            else
            res.send({ data:data1, allrecords, page, harsh })

    })



    

});

app.get("/delete", (req, res) => {
    var id1 = req.query.id;
    console.log("delete id :::::::;;", id1)
    var num = 0;

    conn.query(`update job_application_form_database.candidate_basic_info set delete_row= 1 where candidate_id=${id1};`, (err, data) => {
        if (err) throw err;
        else {
            console.log("Updated")
        }
    })
})


app.get("/deleterecord", (req, res) => {
    var candidate_id = req.query.candidate_id;

    conn.query(`update candidate_basic_info set delete_row= 1 where candidate_id in (${candidate_id})`, (err, result) => {
        if (err) throw err;
    })
})

const query1 = util.promisify(conn.query).bind(conn);
conn.connect((err) => {
    if (err) throw err;
    console.log("connected");
})
app.get("/edit", async (req, res) => {

    var id2 = req.query.id2;
    var state = await query1(`select * from state_master`);
    var status = await query1(`select option_name from option_master where select_id=1;`);
    var data = await query1(`select * from candidate_basic_info where candidate_id='${id2}'`)
    var data2 = await query1(`Select * from candidate_education_info where candidate_id='${id2}'`)
    var data3 = await query1(`select * from candidate_work_experience where candidate_id='${id2}'`)
    var data4 = await query1(`select * from references1 where candidate_id='${id2}'`)
    var language = await query1(`select option_name from option_master where select_id=6;`)
    var data5 = await query1(`select * from languages_known where candidate_id='${id2}'`)
    var technology = await query1(`select option_name from option_master where select_id=7;`)
    var data6 = await query1(`select * from technologies_known where candidate_id='${id2}'`)
    var course = await query1(`select option_name from option_master where select_id=3;`)

    // var data7=await query1(`Select * from preferences where candidate_id='${id2}'`)
    var prefered_location = await query1(`select option_name from option_master where select_id=4;`);


    var data8 = await query1(`Select * from preferences where candidate_id='${id2}'`)
    var prefered_department = await query1(`select option_name from option_master where select_id=5;`);
    // console.log(data7)
    console.log(prefered_location)
    console.log(data8)
    console.log(prefered_department)
    //console.log(data);

    //console.log("data5", data5)
    //console.log("language", language)



    //  *********For Languages**********************
    var languageget = []
    var readlang = []
    var writelang = []
    var speaklang = []
    for (i = 0; i < data5.length; i++) {

        languageget.push(data5[i].language);
        readlang.push(data5[i].language_read)
        writelang.push(data5[i].language_write)
        speaklang.push(data5[i].language_speak)

    }



    //  *********For Technologies**********************
    var technologyget = []
    var technologyknowing = []

    for (i = 0; i < data6.length; i++) {

        technologyget.push(data6[i].technology);
        technologyknowing.push(data6[i].technologyknown)

    }

    res.render('basic_info.ejs', { data, data2, data3, data4, data5, status, state, course, language, languageget, readlang, writelang, speaklang, technology, technologyget, technologyknowing, prefered_location, data8, prefered_department });
    console.log(languageget)
    console.log(readlang)
    console.log(writelang)
    console.log(speaklang)
    console.log(technologyget)
    console.log(technologyknowing)

})



app.post("/update", async (req, res) => {
    console.log("body ::::::::", req.body.course[0]);
    await query1(`update candidate_basic_info set candidate_fname="${req.body.fname}",candidate_lname="${req.body.lname}",candidate_designation="${req.body.designation1}",candidate_email="${req.body.email}",candidate_phone_number="${req.body.phone}",candidate_gender="${req.body.gender}",candidate_address1="${req.body.address1}",candidate_address2="${req.body.address2}",candidate_state="${req.body.state}",candidate_zipcode="${req.body.zipcode}",candidate_relationship_status="${req.body.relationship_status}",candidate_dob="${req.body.dob}" where candidate_id=${req.body.candidate_id}`);

    console.log(req.body.education_id);
    if (typeof (req.body.companyname) == 'object') {
        for (i = 0; i < req.body.course.length; i++) {
            await query1(`update candidate_education_info set education_course='${req.body.course[i]}',education_board='${req.body.board[i]}',education_passing_year='${req.body.passing_year[i]}',education_percentage='${req.body.percentage[i]}' where education_id='${req.body.education_id[i]}'`);
        }
    }
    else {
        await query1(`update candidate_education_info set education_course='${req.body.course}',education_board='${req.body.board}',education_passing_year='${req.body.passing_year}',education_percentage='${req.body.percentage}' where education_id='${req.body.education_id}'`);

    }

    console.log("length::::::::", req.body.companyname.length)
    if (typeof (req.body.companyname) == 'object') {
        for (j = 0; j < req.body.companyname.length; j++) {
            console.log("id::::::", req.body.work_experience_id[j])
            await query1(`update candidate_work_experience set company_name='${req.body.companyname[j]}',company_designation='${req.body.designation[j]}',from_date='${req.body.from[j]}',from_to='${req.body.to[j]}' where work_experience_id='${req.body.work_experience_id[j]}'`);
        }
    } else {
        await query1(`update candidate_work_experience set company_name='${req.body.companyname}',company_designation='${req.body.designation}',from_date='${req.body.from}',from_to='${req.body.to}' where work_experience_id='${req.body.work_experience_id}'`);
    }



    for (k = 0; k < req.body.reference_name.length; k++) {
        await query1(`update references1 set reference_name='${req.body.reference_name[k]}',reference_contact='${req.body.reference_contact[k]}',reference_relation='${req.body.reference_relation[k]}' where reference_id='${req.body.reference_id[k]}'`);
    }


    for (k = 0; k < req.body.language.length; k++) {
        await query1(`delete from languages_known where candidate_id='${req.body.candidate_id}'`);
        if (typeof (language) == "string") {

            await query1(`insert into languages_known(candidate_id,language,language_read,language_write,language_speak) values('${req.body.candidate_id}','${req.body.language}','${req.body.read.includes(req.body.language) ? 'yes' : 'no'}','${req.body.write.includes(req.body.language) ? 'yes' : 'no'}','${req.body.speak.includes(req.body.language) ? 'yes' : 'no'}');`)
        }
        else {

            for (i = 0; i < req.body.language.length; i++) {

                await query1(`insert into languages_known(candidate_id,language,language_read,language_write,language_speak) values('${req.body.candidate_id}','${req.body.language[i]}','${req.body.read.includes(req.body.language[i]) ? 'yes' : 'no'}','${req.body.write.includes(req.body.language[i]) ? 'yes' : 'no'}','${req.body.speak.includes(req.body.language[i]) ? 'yes' : 'no'}');`)

            }
        }
    }
    var del = await query1(`delete from technologies_known where candidate_id='${req.body.candidate_id}'`);
    technology = req.body.technology
    const abcd = [];
    for (let i = 0; i < technology.length; i++) {
        abcd.push(req.body['technologyknown' + technology[i]]);
    }

    if (typeof (technology) == "string") {
        conn.query(`insert into technologies_known(candidate_id,technology,technologyknown) values('${req.body.candidate_id}','${technology}','${abcd}');`, (err, result4) => {
            if (err) { throw err; }
        })
    }
    else {

        for (i = 0; i < abcd.length; i++) {
            conn.query(`insert into technologies_known(candidate_id,technology,technologyknown) values('${req.body.candidate_id}','${technology[i]}','${abcd[i]}');`, (err, result4) => {
                if (err) { throw err; }
            })
        }
    }




    // Preferences


    await query1(`update preferences set preffered_location='${req.body.prefered_location}',notice_period='${req.body.notice_period}',expected_ctc='${req.body.expected_ctc}',current_ctc='${req.body.current_ctc}',department='${req.body.prefered_department}' where preferences_id='${req.body.preferences_id}'`);


})


// Pagination
var allrecords = 0;
var limit = 4;
var offset = 0;


// actual pagination and navigation from one page to another
app.get('/showall/things', (req, res) => {
    let ajax = req.query.ajax || "false"
    conn.query(`Select count(*) as total from candidate_basic_info where delete_row IS NULL`, (err, result1) => {
        allrecords = result1[0].total
    })

    let page = req.query.page || 1;
    offset = (page - 1) * limit;
    console.log("offset:::::::", offset)
    console.log("page:::::::", page)

    conn.query(`Select * from candidate_basic_info where delete_row IS NULL order by candidate_id asc limit ${offset},${limit}`, (err, data) => {
        if (err) return console.log(err.message);
        allrecords = Math.ceil(allrecords / limit);
        console.log("demo::::::::::", allrecords);

        if (ajax == "false")
            res.render("things.ejs", { data, allrecords, page });
        else
            res.send({ data, allrecords, page })

    })
})

