import mysql from 'mysql'
export const conexao = 
    mysql.createConnection({
        host : 'localhost',
        user : 'root',
        password : '',
        database : 'sistema_apostas'
    })



