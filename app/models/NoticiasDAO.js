function NoticiasDAO(connection){
    this._connection = connection;
}

NoticiasDAO.prototype.getNoticias = function(callback){
    this._connection.query('select * from noticias order by data_noticia desc', callback);
}

NoticiasDAO.prototype.getNoticia = function(noticiaId, callback){
    this._connection.query('select * from noticias where id = ' + noticiaId, callback);
}

NoticiasDAO.prototype.saveNoticia = function(noticia, callback){
    this._connection.query('insert into noticias set ?', noticia, callback);
}

NoticiasDAO.prototype.listLastFiveNoticias = function(callback){
    this._connection.query('select *  from noticias order by data_noticia desc limit 5', callback);
}

module.exports = function(){
    return NoticiasDAO;
}