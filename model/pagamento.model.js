import { rejects } from "assert"
import {conexao} from "../conexao.js"
import { resolve } from "path"



export async function selectModel(){
     
    return new Promise ((resolve,rejects)=>{
        conexao.query(`SELECT * from formapagamento`,(error,result)=>{
            resolve(result)
        }) 
    })
}