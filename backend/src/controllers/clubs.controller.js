/**
 * @file Controlador de clubs.
 */
import {getAllClubs, getClubById, getClubsByLeagueId} from "../repositories/clubs.repository.js";
import {getTotalClubValue} from "../repositories/values.repository.js";

// Devuelve un array con todos los clubes
export const getClubs = async (req, res) => {
  try {
    const clubs = await getAllClubs();
    res.json(clubs);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo clubs" });
  }
};

// Devuelve un array con todos los clubes de una liga
export const getClubsByLeague = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const clubs = await getClubsByLeagueId(id);
    res.json(clubs);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo clubs" });
  }
};

// Devuelve los datos de un club
export const getClub = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const club = await getClubById(id);
    res.json(club);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo el club" });
  }
};

// Devuelve un int con la suma del valor de los jugadores del club
export const getClubValue = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const totalValue = await getTotalClubValue(id);
    res.json(totalValue);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo el club" });
  }
};