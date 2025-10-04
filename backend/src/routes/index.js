import { Router } from "express";
import playersRoutes from "./players.routes.js";

const router = Router();

router.use("/jugadores", playersRoutes);

export default router;