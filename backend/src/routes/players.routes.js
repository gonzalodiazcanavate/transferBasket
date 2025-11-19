import {Router} from "express";
import {verifyToken} from "../middlewares/auth.middleware.js";
import {getPlayer, getPlayers, getPlayersByClub, getPlayerValue, getPlayerValues} from "../controllers/players.controller.js";

const router = Router();

router.get("/", getPlayers);
router.get("/:id", getPlayer);
router.get("/club/:id", getPlayersByClub);
router.get("/valores/:id", getPlayerValues);
router.get("/valor/:id", getPlayerValue);

export default router;