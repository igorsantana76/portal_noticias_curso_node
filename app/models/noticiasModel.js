module.exports = function(){

    this.getNoticias = function(connection, callback){
        connection.query('select * from Noticias', callback);
    }

    this.getNoticia = function(connection, noticiaId ,callback){
        connection.query('select * from Noticias where id = 1', callback);
    }

    return this;
}