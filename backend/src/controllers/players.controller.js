import {getAllPlayers} from '../repositories/players.repository.js';

export const getPlayers = async (req, res) => {
  try {
    const players = await getAllPlayers();
    res.json(players);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo jugadores" });
  }
};