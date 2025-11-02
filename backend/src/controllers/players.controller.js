/**
 * @file Controlador de jugadores.
 */
import {getAllPlayers, getPlayerById, getAllPlayersByClub} from "../repositories/players.repository.js";
import {getPlayerCurrentValue, getValuesByPlayerId} from "../repositories/values.repository.js";

export const getPlayers = async (req, res) => {
  try {
    const players = await getAllPlayers();
    res.json(players);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo jugadores" });
  }
};

export const getPlayersByClub = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const players = await getAllPlayersByClub();
    res.json(players);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo jugadores" });
  }
};

export const getPlayer = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const player = await getPlayerById(id);
    res.json(player);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo el jugador" });
  }
};

export const getPlayerValues = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const values = await getValuesByPlayerId(id);
    res.json(values);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo los valores del jugador" });
  }
};

export const getPlayerValue = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const value = await getPlayerCurrentValue(id);
    res.json(value);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo el valor del jugador" });
  }
};