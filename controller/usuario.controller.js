import {cadastrar} from "../model/usuario.model.js"

export async function cadastrarController(req,res){
    const nome = req.body.nome
    const email = req.body.email
    const senha = req.body.senha
    const cadastro = await cadastrar(nome,email,senha)
    return res.json(cadastro)
}

export async function buscaUsuarioController(req,res){
    
}