
module.exports = function(app){

    app.get('/noticia', function(req, res){

        var connection =  app.config.dbConnection();

        connection.query('select * from Noticias where id = 2', mostrarTodasNoticias);

        function mostrarTodasNoticias(error, result){
            res.render('noticias/noticia', { noticia : result[0] });

            connection.end();
        }
    });
}