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

// Trae todos los datos completos de un jugador por ID.
export const getPlayerFullById = (id) =>
  prisma.players.findUnique({
    where: { id },
    // Joints con tablas relacionadas
    include: {
      club: {
        select: {
          id: true,
          name: true,
          image_url: true
        }
      },

      values: {
        orderBy: { date: "desc" },
        take: 1,
        select: {
          value: true,
          date: true
        }
      },

      salaries: {
        orderBy: { date: "desc" },
        take: 1,
        select: {
          salary: true,
          date: true
        }
      },
      // Nacionalidades
      nationalities: {
        select: {
          country: {
            select: {
              id: true,
              name: true,
              nationality: true,
              image_url: true
            }
            
          }
        }
      }
    }
  });

// Trae todos los datos completos de un todos los jugadores
export const getAllPlayersFull = () =>
  prisma.players.findMany({
    // Joints con tablas relacionadas
    include: {
      club: {
        select: {
          id: true,
          name: true,
          image_url: true
        }
      },

      values: {
        orderBy: { date: "desc" },
        take: 1,
        select: {
          value: true,
          date: true
        }
      },

      salaries: {
        orderBy: { date: "desc" },
        take: 1,
        select: {
          salary: true,
          date: true
        }
      },
      // Nacionalidades
      nationalities: {
        select: {
          country: {
            select: {
              id: true,
              name: true,
              nationality: true,
              image_url: true
            }
          }
        }
      }
    }
  });