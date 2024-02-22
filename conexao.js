import mysql from 'mysql'
export const conexao = 
    mysql.createConnection({
        host : 'sql310.infinityfree.com',
        user : 'if0_36026804',
        password : 'ZXUDKl4olH',
        database : 'if0_36026804_XXX'
    })

    conexao.query('SELECT * FROM usuario', function (error, results, fields) {
        if (error) {
            console.error('Erro na consulta SQL:', error);
            // Adote a lógica apropriada para lidar com o erro
        } else {
           console.log("acho que foi")
        }
    
        // Encerre a conexão após o uso
        conexao.end();
    })
