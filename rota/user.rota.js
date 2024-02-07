import {Router} from "express"
import {apostarController, cadastrarController,buscaUsuarioController,resultadoController } from "../controller/usuario.controller.js"

 const userRouter = Router()

userRouter.get('/:idUsuario',buscaUsuarioController)
userRouter.post('',cadastrarController)
userRouter.post('/aposta/:idUsuario',apostarController)
userRouter.post('/resultado',resultadoController)

export{userRouter}
