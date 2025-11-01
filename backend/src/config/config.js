import dotenv from "dotenv";

dotenv.config();

// Transformamos y validamos las variables
export const config = {
  apiUrl: process.env.API_URL,
  // SALT_ROUNDS debe ser un número entero
  saltRounds: parseInt(process.env.SALT_ROUNDS, 10) || 10,
  // Contraseña de JWT
  JWTSecret: process.env.JWT_SECRET,
  // Tiempo de expiración de JWT
  jwtExpiresIn: "1h",
};
