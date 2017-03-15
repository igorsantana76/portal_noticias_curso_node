module.exports.formulario_inclusao_noticia = function(application, req, res){
    res.render('admin/form_add_noticia', { validacao : [], noticia: {} });
}

module.exports.noticias_salvar = function(application, req, res){

    // Pegando o body da requisição
    var noticia = req.body;

    // Validação do body da requisição
    // Campo - Mensagem - Validação
    req.assert('titulo', 'Titulo é obrigatorio').notEmpty();
    req.assert('resumo', 'Resumo é obrigatorio').notEmpty();
    req.assert('resumo', 'Resumo deve conter entre 10 e 100 caracteres').len(10,100);
    req.assert('autor', 'Titulo é obrigatorio').notEmpty();
    req.assert('data_noticia', 'Data é obrigatorio').notEmpty().isDate({format: 'YYYY-MM-DD'});
    req.assert('noticia', 'A Noticia é obrigatorio').notEmpty();

    var errors = req.validationErrors();

    if(errors){
        // Retornando os dados do form anterior caso dê erro
        res.render('admin/form_add_noticia', { validacao : errors, noticia: noticia});
        return;
    }

    var connection =  application.config.dbConnection();
    var noticiasModel = new application.app.models.NoticiasDAO(connection);

    noticiasModel.saveNoticia(noticia, function(error, result){
        connection.end();
        res.redirect('/noticias');
    });
}