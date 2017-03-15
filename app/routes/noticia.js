
module.exports = function(application){

    application.get('/noticia', function(req, res){

        var connection =  application.config.dbConnection();
        var noticiasModel = new application.app.models.NoticiasDAO(connection);

        noticiasModel.getNoticia(2, function(error, result){

            //connection.end();
            res.render('noticias/noticia', {noticia : result[0]});
        })
    });
}