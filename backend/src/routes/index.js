import { Router } from "express";
import playersRoutes from "./players.routes.js";
import usersRoutes from "./users.routes.js";
import clubsRoutes from "./clubs.routes.js";

const router = Router();

router.use("/jugadores", playersRoutes);

router.use("/users", usersRoutes);

router.use("/clubs", clubsRoutes);

export default router;