import {loginModel} from "../model/login.model.js"

export async function login(req,res){
    const email = req.body.email
    const senha = req.body.senha
    const user = await loginModel(email,senha)
    return res.send(user)
}