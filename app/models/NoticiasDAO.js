function NoticiasDAO(connection){
    this._connection = connection;
}

module.exports = function(){

    NoticiasDAO.prototype.getNoticias = function(callback){
        this._connection.query('select * from Noticias', callback);
    }

    NoticiasDAO.prototype.getNoticia = function(noticiaId, callback){
        this._connection.query('select * from Noticias where id = 1', callback);
    }

    NoticiasDAO.prototype.saveNoticia = function(noticia, callback){
        this._connection.query('insert into noticias set ?', noticia, callback);
    }

    return NoticiasDAO;
}