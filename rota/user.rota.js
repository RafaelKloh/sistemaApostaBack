import {Router} from "express"
import {apostarController, cadastrarController,buscaUsuarioController,resultadoController,resultadoApostaController } from "../controller/usuario.controller.js"

 const userRouter = Router()

userRouter.get('/:idUsuario',buscaUsuarioController)
userRouter.post('',cadastrarController)
userRouter.post('/aposta/:idUsuario',apostarController)
userRouter.post('/:id/resultadoApostaUsuario',resultadoApostaController)
userRouter.post('/resultado',resultadoController)

export{userRouter}
