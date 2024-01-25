import { Router } from "express"
import { login } from "../controller/login.controller.js"

export const cadastroUsuario = Router()

cadastroUsuario.post('', cadastroUsuario)

