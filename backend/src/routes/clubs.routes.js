import {Router} from "express";
import {verifyToken} from "../middlewares/auth.middleware.js";
import {getClub, getClubsByLeague, getClubs, getClubValue} from "../controllers/clubs.controller.js";

const router = Router();

router.get("/", getClubs);
router.get("/:id", getClub);
router.get("/liga/:id", getClubsByLeague);
router.get("/valor/:id", getClubValue);

export default router;