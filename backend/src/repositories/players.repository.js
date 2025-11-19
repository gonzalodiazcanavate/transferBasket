/**
 * @file Repositorio de jugadores.
 */
import prisma from "../config/db.js";

// Trae todos los jugadores de la base de datos.
export const getAllPlayers = () => prisma.players.findMany();

// Trae todos los juadores de un equipo
export const getAllPlayersByClub = (club_id) => prisma.players.findMany({
  where: {club_id: club_id}
});

// Trae a un jugador por id de la base de datos.
export const getPlayerById = (id) => prisma.players.findUnique({
  where: {id: id}
});