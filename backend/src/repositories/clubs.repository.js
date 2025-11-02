/**
 * @file Repositorio de clubs.
 */
import prisma from "../config/db.js";

// Trae todos los clubs de la base de datos.
export const getAllClubs = () => prisma.clubs.findMany();

// Trae a un club por league_id de la base de datos.
export const getClubsByLeagueId = (league_id) => prisma.clubs.findMany({
  where: {league_id: league_id}
});

// Trae a un club por id de la base de datos.
export const getClubById = (id) => prisma.clubs.findUnique({
  where: {id: id}
});