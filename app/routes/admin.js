module.exports = function(application){

    // Está é forma correta de se implementar rotas
    //, sua função é basicamente para chamar a controller da view 

    application.get('/formulario_add_noticia', function(req, res){
        application.app.controllers.admin.formulario_inclusao_noticia(application, req, res);
    });

    application.post('/noticias/salvar', function(req, res){
        application.app.controllers.admin.noticias_salvar(application, req, res);
    });
}