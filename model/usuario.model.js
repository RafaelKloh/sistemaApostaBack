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

export async function apostaModell(idUsuario,numeroUsuario,dataCompleta,idFormaPagamento,valorAposta){  
    return new Promise ((resolve,rejects)=>{
        console.log(dataCompleta)
        conexao.query(`INSERT INTO aposta VALUES(null, ${idUsuario},${numeroUsuario},'${dataCompleta}',${idFormaPagamento},${valorAposta})`,(error,result)=>{
            console.log(error)
           resolve(result)
        }) 
    })
}