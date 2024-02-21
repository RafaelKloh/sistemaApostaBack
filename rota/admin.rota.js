import {Router} from "express"
import {resultadoController,listaUsuarioController} from "../controller/admin.controller.js"

 const adminRouter = Router()

adminRouter.post('/resultado',resultadoController)
adminRouter.get('/listaUsuario',listaUsuarioController)

export{adminRouter}