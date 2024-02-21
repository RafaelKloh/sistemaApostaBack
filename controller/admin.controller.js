import {resultadoAposta,listaUsuario} from "../model/admin.model.js"

export async function resultadoController(req,res){
    const data = req.body.dataSorteio
    const result = await resultadoAposta(data)
    return res.json(result)
}

export async function listaUsuarioController(req,res){
    const select = await listaUsuario()
    return res.json(select)
}