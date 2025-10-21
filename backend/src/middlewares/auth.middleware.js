/**
 * @file - Middleware que verifica que el usuario este autentificado. Lo usaremos para proteger ciertos endpoints.
 */
import jwt from "jsonwebtoken";
import {config} from "../config/config.js";

export const verifyToken = (req, res, next) => {
  // Rescatamos el token de las cookies
  const token = req.cookies.auth_token;

  if (!token)
    return res.status(401).json({error: "No autenticado."});

  try {
    const decoded = jwt.verify(token, config.JWTSecret);
    req.user = decoded;
    next();
  } catch {
    return res.status(403).json({error: "Token inválido o expirado."});
  }
};
