import express from "express";
import cors from "cors";
import morgan from "morgan";
import routes from "./routes/index.js";

const app = express();

app.use(cors({ origin: "http://localhost:3000" }));
app.use(express.json());

// Log de peticiones HTTP (GET, POST, etc.)
app.use(morgan("dev"));

// Rutas principales
app.use("/api", routes);

export default app;