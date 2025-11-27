import {Router} from "express";
import {verifyToken} from "../middlewares/auth.middleware.js";
import {
  getPlayer,
  getPlayers,
  getPlayersByClub,
  getPlayerValue,
  getPlayerValues,
  getPlayerSalaries,
  getPlayerSalary,
  getPlayerTransfers,
  getPlayerFull, 
  getPlayersFull,
} from "../controllers/players.controller.js";

const router = Router();

router.get("/", getPlayers);
router.get("/completos", getPlayersFull);
router.get("/:id", getPlayer);
router.get("/completo/:id", getPlayerFull);
router.get("/club/:id", getPlayersByClub);
router.get("/valores/:id", getPlayerValues);
router.get("/valor/:id", getPlayerValue);
router.get("/salario/:id", getPlayerSalary);
router.get("/salarios/:id", getPlayerSalaries);
router.get("/traspasos/:id", getPlayerTransfers);
export default router;