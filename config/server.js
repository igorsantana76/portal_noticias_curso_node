// Express é um framework que realiza uma interface entre nossos scripts e o node
var express = require('express');
var consign = require('consign');
var bodyParser = require('body-parser');

var app = express();

// Definindo que o engine de view do express é o EJS
app.set('view engine', 'ejs');

// Folder padrão das views
app.set('views', './app/views');

// Incluindo o BodyParser no Express
app.use(bodyParser.urlencoded({extended: true}));

consign()
    .include('app/routes')
    .then('/config/dbConnection.js')
    .then('app/models')
    .into(app);

module.exports = app;