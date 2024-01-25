import { rejects } from "assert"
import {conexao} from "../conexao.js"
import { resolve } from "path"



export async function cadastrar(nome,email,senha){  
    return new Promise ((resolve,rejects)=>{
        conexao.query(`INSERT INTO usuario VALUES(null, '${nome}','${email}','${senha}',1)`,(error,result)=>{
            conexao.query(`SELECT * FROM usuario WHERE idUsuario = ${result.insertId}`,(erroSelect,resultSelect)=>{
                resolve(resultSelect)
            })
        }) 
    })
}