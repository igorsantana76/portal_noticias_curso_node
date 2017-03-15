
module.exports = function(app){

    app.get('/noticia', function(req, res){

        var connection =  app.config.dbConnection();
        var noticiasModel = app.app.models.noticiasModel;

        noticiasModel.getNoticia(connection, 2, function(error, result){

            res.render('noticias/noticia', {noticia : result[0]});
            connection.end();
        })
    });
}