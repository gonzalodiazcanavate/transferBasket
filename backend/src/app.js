import express from "express";
import cors from "cors";
import cookieParser from "cookie-parser";
import morgan from "morgan";
import routes from "./routes/index.js";

const app = express();

app.use(cors({ origin: "http://localhost:3000", credentials: true, }));
app.use(express.json());
app.use(cookieParser());

// Log de peticiones HTTP (GET, POST, etc.)
app.use(morgan("dev"));

// Rutas principales
app.use("/api", routes);

export default app;