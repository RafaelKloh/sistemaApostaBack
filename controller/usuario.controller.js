import {cadastrar,apostaModell} from "../model/usuario.model.js"

export async function cadastrarController(req,res){
    const nome = req.body.nome
    const email = req.body.email
    const senha = req.body.senha
    const cadastro = await cadastrar(nome,email,senha)
    return res.json(cadastro)
}

export async function apostarController(req,res){
    const idUsuario = req.params.idUsuario
    const numeroUsuario = req.body.numeroUsuario
    const data = new Date()
    let dia = data.getDate()
    let mes = data.getMonth() + 1
    if(mes < 10){
        mes = `0${mes}`
    }

    console.log(dia)
    if(dia < 10){
        dia = `0${dia}`
    }
    
    console.log(dia)
    const ano = data.getFullYear()
    const dataCompleta = ano + "-" + mes + "-" + dia
    const idFormaPagamento = req.body.idFormaPagamento;
    const valorAposta = req.body.valorApostado
    
    const aposta = await apostaModell(idUsuario,numeroUsuario,dataCompleta,idFormaPagamento,valorAposta)
    return res.json(aposta)
}


export async function buscaUsuarioController(req,res){

}