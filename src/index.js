const express = require('express'); //modulo que utiliza el http, arranca express
const app = express(); //servidor


//middleware
app.use(express.json());
app.use(express.urlencoded({extended: false}));
var path = require ('path');
const viewsPath  = path.join(__dirname + '/views');
app.set('view engine', 'ejs');
app.set('views', viewsPath);

// Routers
app.use(require('./routes/index.js'));
app.listen(4000);
