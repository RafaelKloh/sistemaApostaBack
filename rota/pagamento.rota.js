import { Router } from "express"
import { selectFormaPagamento } from "../controller/pagamento.controller.js"

const pagamentoRouter = Router()

pagamentoRouter.get('',selectFormaPagamento)

export{pagamentoRouter}