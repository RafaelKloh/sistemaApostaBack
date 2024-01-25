import { rejects } from "assert"
import {conexao} from "../conexao.js"
import { resolve } from "path"



export async function loginModel(email,senha){
     
    return new Promise ((resolve,rejects)=>{
        conexao.query("SELECT * from usuario",(error,result)=>{
            console.log(result)
            resolve(result)
        }) 
    })
}