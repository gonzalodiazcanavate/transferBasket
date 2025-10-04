import prisma from "../config/db.js";

export const getPlayers = async (req, res) => {
  try {
    const players = await prisma.players.findMany();
    res.json(players);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo jugadores" });
  }
};