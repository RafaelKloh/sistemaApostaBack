import { cadastrar, apostaModell, resultadoModell,resultadoApostaModell } from "../model/usuario.model.js"

export async function cadastrarController(req, res) {
    const nome = req.body.nome
    const email = req.body.email
    const senha = req.body.senha
    const cadastro = await cadastrar(nome, email, senha)
    return res.json(cadastro)
}

export async function apostarController(req, res) {
    const idUsuario = req.params.idUsuario
    const numeroUsuario = req.body.numeroUsuario
    const data = new Date()
    let dia = data.getDate()
    let mes = data.getMonth() + 1
    if (mes < 10) {
        mes = `0${mes}`
    }


    if (dia < 10) {
        dia = `0${dia}`
    }


    const ano = data.getFullYear()
    const dataCompleta = dia + "-" + mes + "-" + ano
    const idFormaPagamento = req.body.idFormaPagamento;
    const valorAposta = req.body.valorApostado
    const aposta = await apostaModell(idUsuario, numeroUsuario, dataCompleta, idFormaPagamento, valorAposta)
    return res.json(aposta)
}


export async function buscaUsuarioController(req, res) {
    return res.json({judas:"Judas"})
}

export async function resultadoController(req, res) {
    const dataCompleta = req.body.dataSorteio
    const numeroAleatorio = req.body.numeroMaquina
    const animalSorteado = req.body.animalSorteado
    const resultado = await resultadoModell(dataCompleta, animalSorteado, numeroAleatorio)
    return res.json(resultado)
}

export async function resultadoApostaController(req,res){
    const dataSelect = req.body.dataSorteio
    const resultadoAposta = await resultadoApostaModell(dataSelect)
    return res.json(resultadoAposta)
}