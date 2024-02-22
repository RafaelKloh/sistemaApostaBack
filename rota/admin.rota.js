import {Router} from "express"
import {resultadoController} from "../controller/admin.controller.js"

 const adminRouter = Router()

adminRouter.post('/resultado',resultadoController)

export{adminRouter}