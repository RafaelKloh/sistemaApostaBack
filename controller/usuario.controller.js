import {cadastrar} from "../model/usuario.model.js"

export async function cadastrarController(req,res){
    const nome = req.body.nome
    const email = req.body.email
    const senha = req.body.senha
    const cadastro = await cadastrar(nome,email,senha)
    return res.json(cadastro)
}

export async function apostarController(req,res){
    const idUsuario = req.params.idUsuario
    const numeroUsuario = req.body.numeroAposta
    const data = new Date()
    const dia = data.getDate()
    const mes = data.getMonth() + 1
    const ano = data.getFullYear()
    const dataCompleta = ano + "-" + mes + "-" + dia
    const formaPagamento = req.body.idFormaPagamento;
    console.log(formaPagamento)
    const calorAposta = req.body.valorAposta
}


export async function buscaUsuarioController(req,res){

}