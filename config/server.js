// Express é um framework que realiza uma interface entre nossos scripts e o node
var express = require('express');
var consign = require('consign');
var bodyParser = require('body-parser');
var expressValidator = require('express-validator'); 

var app = express();

// Definindo que o engine de view do express é o EJS
app.set('view engine', 'ejs');

// Folder padrão das views
app.set('views', './app/views');

// Inclusão de todos os arquivos estaticos
//, simulando como se todos estivessem na raiz do App
app.use(express.static('./app/public')); // Show

// Incluindo o BodyParser no Express
app.use(bodyParser.urlencoded({extended: true}));

// Incluindo o expressValidator no Express
app.use(expressValidator());

consign()
    .include('app/routes')
    .then('/config/dbConnection.js')
    .then('app/models')              // Inclusão dos models no modulo App
    .then('app/controllers')        // Inclusão dos models no modulo App
    .into(app);

module.exports = app;