import {cadastrar} from "../model/usuario.model.js"

export async function cadastrarController(req,res){
    const nome = req.body.nome
    const email = req.body.email
    const senha = req.body.senha
    const cadastro = await cadastrar(nome,email,senha)
    return res.json(cadastro)
}

export async function buscaUsuarioController(req,res){
    const idUsuario = req.params.idUsuario
    const numeroUsuario = req.body.numeroAposta
    const data = new Date()
    const dia = data.getDate()
    const mes = data.getMonth() + 1
    const ano = data.getFullYear()
    const dataCompleta = ano + "-" + mes + "-" + dia
    const formaPagamento = "OLHAAQUIDEPOISPRANAOESQUECER"
    const calorAposta = rq.body.valorAposta
}