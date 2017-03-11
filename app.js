// Modulo de configuração do server
var app = require('./config/server.js');

var rotaHome = require('./app/routes/home')(app);
var rotaNoticias = require('./app/routes/noticias')(app);
var rotaInclusaoNoticia = require('./app/routes/formulario_inclusao_noticia')(app);

app.listen(3000, function(){
    console.log("SERVIDOR ON");
});