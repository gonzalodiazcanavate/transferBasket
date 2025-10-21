import {Router} from "express";
import {verifyToken} from "../middlewares/auth.middleware.js";
import {getPlayers} from "../controllers/players.controller.js";

const router = Router();

router.get("/", verifyToken, getPlayers);

export default router;