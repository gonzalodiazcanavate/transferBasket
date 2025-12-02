import {Router} from "express";
import {login, logout, register, isMe} from "../controllers/users.controller.js"

const router = Router();
// IsMe
router.get("/me", isMe);
// Login
router.post("/login", login);
// Registro
router.post("/register", register);
// Logout
router.get("/logout", logout);

export default router;