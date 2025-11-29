import { Router } from "express";
import playersRoutes from "./players.routes.js";
import usersRoutes from "./users.routes.js";
import clubsRoutes from "./clubs.routes.js";
import transfersRoutes from "./transfers.routes.js";
import searchRoutes from "./search.routes.js";

const router = Router();

router.use("/jugadores", playersRoutes);

router.use("/users", usersRoutes);

router.use("/clubs", clubsRoutes);

router.use("/traspasos", transfersRoutes);

router.use("/search", searchRoutes);

export default router;