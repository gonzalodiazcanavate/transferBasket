import {Router} from "express";
import {verifyToken} from "../middlewares/auth.middleware.js";
import { searchPlayerOrClub } from "../controllers/search.controller.js";

const router = Router();

router.get("/", searchPlayerOrClub);

export default router;