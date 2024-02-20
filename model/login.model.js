import { rejects } from "assert"
import {conexao} from "../conexao.js"
import { resolve } from "path"

export async function loginModel(email,senha){
    return new Promise ((resolve,rejects)=>{
        conexao.query(`SELECT * from usuario WHERE email = '${email}' and senha = '${senha}' `,(error,result)=>{
            if(result.length <= 0){
                const usuarioNaoEncontrado = { mensagem: "Usuário não encontrado" };
                resolve(usuarioNaoEncontrado);
            }
            else{
                resolve(result) 
            }
        }) 
    })
}