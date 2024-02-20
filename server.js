import {conexao} from "./conexao.js";
import express from 'express'
import cors from "cors"
import { userRouter } from "./rota/user.rota.js";
import { loginRouter } from "./rota/login.rota.js";
import { pagamentoRouter } from "./rota/pagamento.rota.js";
import { adminRouter } from "./rota/admin.rota.js";

const server = express()
server.use(cors())
server.use(express.json())
server.use('/user',userRouter)
server.use('/login',loginRouter)
server.use('/pagamento',pagamentoRouter)
server.use('/admin',adminRouter)
 const db =  conexao.connect(()=>{
    console.log('database connected')
 })
server.listen(3000,async ()=>{
    console.log('Server rodando')
})