import prisma from "../config/db.js";

export const getAllPlayers = () => prisma.players.findMany();