module.exports = function(application){

    // Devida implementação das rotas
    //, basicamente para chamar a função da controller

    application.get('/formulario_add_noticia', function(req, res){
        application.app.controllers.admin.formulario_inclusao_noticia(application, req, res);
    });

    application.post('/noticias/salvar', function(req, res){
        application.app.controllers.admin.noticias_salvar(application, req, res);
    });
}