import {Router} from "express"
import {apostarController, cadastrarController,buscaUsuarioController } from "../controller/usuario.controller.js"

 const userRouter = Router()

userRouter.get('/:idUsuario',buscaUsuarioController)
userRouter.post('',cadastrarController)
userRouter.post('/aposta/:idUsuario',apostarController)

export{userRouter}
