import {Router} from "express";
import {login, logout, register} from "../controllers/users.controller.js"

const router = Router();
// Login
router.post("/login", login);
// Registro
router.post("/register", register);
// Logout
router.get("/logout", logout);

export default router;