import { Router } from "express"
import { login } from "../controller/login.controller.js"

export const loginRouter = Router()

loginRouter.post('', login)

