const express = require('express');
const mongoose = require('mongoose');
const app = express();
const ejs = require('ejs');

app.set('view engine', 'ejs');

//connect to mongodb
mongoose.connect('mongodb+srv://s3737852:patricia@cluster0.8p5v4.mongodb.net/SE_Project?retryWrites=true&w=majority');

app.get('/', (req, res) =>{
    res.send('working')
})

app.listen(4000, function(){
    console.log('server is running');
})