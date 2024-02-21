import { rejects } from "assert"
import {conexao} from "../conexao.js"
import { resolve } from "path"

export async function resultadoAposta(data){
    return new Promise ((resolve,rejects)=>{
        conexao.query(`SELECT u.nome, a.valorApostado
        FROM
        usuario u, aposta a
        WHERE
        u.idUsuario = a.idUsuario
        AND a.data = '${data}'; `,(error,result)=>{
            console.log(error)
            console.log(result)
            resolve(result)
        }) 
    })
}

export async function listaUsuario(){
    return new Promise ((resolve,rejects)=>{
        conexao.query(`SELECT * from usuario`,(error,result)=>{
            resolve(result)
        }) 
    })
}