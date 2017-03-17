var mysql = require('mysql');

var mySqlConnection = function(){
    return mysql.createConnection({
        host: 'localhost',
        user: 'root',
        database: 'portal_noticias'
    });
}

module.exports = function(){
    return mySqlConnection;
}