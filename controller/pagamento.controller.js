import {selectModel} from "../model/pagamento.model.js"

export async function selectFormaPagamento(req,res){
    const select = await selectModel()
    return res.json(select)
}