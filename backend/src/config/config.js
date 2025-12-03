import dotenv from "dotenv";

dotenv.config();

// Comprobación de que la variable existe
function required(name, value) {
  if (!value) throw new Error(`Missing required env var: ${name}`);
  return value;
}

// Transformamos y validamos las variables
export const config = {
  apiUrl: process.env.API_URL || "/api",

  // SALT_ROUNDS debe ser un número entero
  saltRounds: parseInt(process.env.SALT_ROUNDS, 10) || 10,

  // Contraseña de JWT
  jwtSecret: required("JWT_SECRET", process.env.JWT_SECRET),

  // Tiempo de expiración de JWT
  jwtExpiresIn: "1h",

  // Origen permitido para CORS
  frontendOrigin: process.env.FRONTEND_ORIGIN || "http://localhost:3000",

  port: parseInt(process.env.PORT, 10) || 4000,
};
