import {Router} from "express";
import {verifyToken} from "../middlewares/auth.middleware.js";
import {getTransfers} from "../controllers/transfers.controller.js";

const router = Router();

router.get("/", getTransfers);
export default router;