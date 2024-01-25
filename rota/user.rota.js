import {Router} from "express"
import {buscaUsuarioController, cadastrarController } from "../controller/usuario.controller.js"

 const userRouter = Router()

userRouter.get('/:id',buscaUsuarioController)
userRouter.post('',cadastrarController)

export{userRouter}
