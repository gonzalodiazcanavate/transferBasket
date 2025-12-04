import express from "express";
import path from "path";
import cors from "cors";
import cookieParser from "cookie-parser";
import morgan from "morgan";
import { config } from "./config/config.js";
import routes from "./routes/index.js";

const app = express();

app.use(cors({
  origin: config.frontendOrigin,
  credentials: true, 
}));
app.use(express.json());
app.use(cookieParser());

// Log de peticiones HTTP (GET, POST, etc.)
app.use(morgan("dev"));

// Rutas principales
app.use("/api", routes);

// Ruta absoluta de /src/assets
const assetsPath = path.join(process.cwd(), "src", "assets");

// Servir archivos estáticos
app.use("/backend-assets", express.static(assetsPath));

export default app;