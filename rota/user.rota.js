import {Router} from "express"
import {buscaUsuarioController, cadastrarController } from "../controller/usuario.controller.js"

 const userRouter = Router()

userRouter.get('/:idUsuario',buscaUsuarioController)
userRouter.post('',cadastrarController)

export{userRouter}
