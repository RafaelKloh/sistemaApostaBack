import {resultadoAposta} from "../model/admin.model.js"

export async function resultadoController(req,res){
    const data = req.body.dataSorteio
    const result = await resultadoAposta(data)
    return res.json(result)
}