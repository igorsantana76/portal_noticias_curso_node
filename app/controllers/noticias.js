module.exports.noticias = function(application, req, res){
    var connection =  application.config.dbConnection();
    var noticiasModel = new application.app.models.NoticiasDAO(connection);

    noticiasModel.getNoticias(function(error, result){

        connection.end();
        res.render('noticias/noticias', { noticias : result });
    });
}

module.exports.noticia = function(application, req, res){
    var connection =  application.config.dbConnection();
    var noticiasModel = new application.app.models.NoticiasDAO(connection);

    // Todos os objetos recebidos via querystring
    // console.log(req.query);

    noticiasModel.getNoticia(req.query.id, function(error, result){
        connection.end();
        res.render('noticias/noticia', {noticia : result[0]});
    });
}