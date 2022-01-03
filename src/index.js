const express = require('express'); //modulo que utiliza el http, arranca express
const app = express(); //servidor


//middleware
app.use(express.json());
app.use(express.urlencoded({extended: false}));


// Routers
app.use(require('./routes/index.js'));
app.listen(5000);
