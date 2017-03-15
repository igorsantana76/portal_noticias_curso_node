module.exports = function(application){
    application.get('/formulario_add_noticia', function(req, res){
        res.render('admin/form_add_noticia');
    });

    application.post('/noticias/salvar', function(req, res){

        var noticia = req.body;

        var connection =  application.config.dbConnection();
        var noticiasModel = new application.app.models.NoticiasDAO(connection);

        noticiasModel.saveNoticia(noticia, function(error, result){

            //connection.end();
            res.redirect('/noticias');
        });
    });
}