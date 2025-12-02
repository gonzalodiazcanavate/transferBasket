/**
 * @file Controlador de jugadores.
 */
import {getAllPlayers, getPlayerById, getAllPlayersByClub, getPlayerFullById, getAllPlayersFull} from "../repositories/players.repository.js";
import {getPlayerCurrentValue, getValuesByPlayerId} from "../repositories/values.repository.js";
import {getSalariesByPlayerId, getPlayerCurrentSalary} from "../repositories/salaries.repository.js";
import { getPlayerTransfersById } from "../repositories/transfers.repository.js";
import {sanitizePlayer} from "../utils/sanitaze.js";

export const getPlayers = async (req, res) => {
  try {
    const players = await getAllPlayers();
    const playersSanitazed = players.map(sanitizePlayer);
    res.json(playersSanitazed);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo jugadores" });
  }
};

export const getPlayersByClub = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const players = await getAllPlayersByClub(id);
    const playersSanitazed = players.map(sanitizePlayer);
    res.json(playersSanitazed);
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
    const playersSanitazed = sanitizePlayer(player);
    res.json(playersSanitazed);
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

export const getPlayerSalaries = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const values = await getSalariesByPlayerId(id);
    res.json(values);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo los salarios del jugador" });
  }
};

export const getPlayerSalary = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const value = await getPlayerCurrentSalary(id);
    res.json(value);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo el salario del jugador" });
  }
};

export const getPlayerTransfers = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const transfers = await getPlayerTransfersById(id);
    res.json(transfers);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo historial de traspasos del jugador" });
  }
}

export const getPlayersFull = async (req, res) => {
  try {
    const players = await getAllPlayersFull();
    const playersDto = players.map(sanitizePlayer);
    // Ordenmaos por value
    playersDto.sort((a, b) => (b.value || 0) - (a.value || 0));
    res.json(playersDto);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo los jugadores completos" });
  }
};

export const getPlayerFull = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    if (isNaN(id)) return res.status(400).json({ error: "ID inválido" });

    const player = await getPlayerFullById(id);
    const playerDto = sanitizePlayer(player);
    res.json(playerDto);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo el jugador completo" });
  }
};