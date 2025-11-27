import {Router} from "express";
import {verifyToken} from "../middlewares/auth.middleware.js";
import {getClub, getClubsByLeague, getClubs, getClubValue, getClubTransfers, getClubWithValue, getClubsWithTotalValue} from "../controllers/clubs.controller.js";

const router = Router();

router.get("/", getClubs);
router.get("/completos", getClubsWithTotalValue);
router.get("/:id", getClub);
router.get("/completo/:id", getClubWithValue);
router.get("/liga/:id", getClubsByLeague);
router.get("/valor/:id", getClubValue);
router.get("/traspasos/:id", getClubTransfers);

export default router;