/**
 * @file Repositorio de transferencias de jugadores.
 */
import prisma from "../config/db.js";

// Trae todos los traspasos ordenados por valor
export const getAllTransfers = () => 
  prisma.transfers.findMany({
    where: {type: "traspaso"},
    orderBy: [
      {value: "desc"}, 
      {date: "asc" }
    ], // ordenado por mayor valor y orden cronológico ascendente
    take: 10, // Solo los 10 primeros
    include: {
      origin: true,  // club de origen (puede ser null)
      destiny: true, // club destino
      player: {
        select: {
          name: true,
          second_name: true,
          image_url: true,
        }
      }
    }
  });

// Trae el historial de traspasos de un jugador por player_id
export const getPlayerTransfersById = (player_id) => 
  prisma.transfers.findMany({
    where: { player_id },
    orderBy: { date: "asc" }, // orden cronológico ascendente
    include: {
      origin: true,  // club de origen
      destiny: true, // club destino
      player: {
        select: {
          name: true,
          second_name: true,
          image_url: true,
        }
      }
    }
  });

// Trae el historial de traspasos de un club por club_id
export const getClubTransfersById = (club_id) => 
  prisma.transfers.findMany({
    where: {
      OR: [
        { origin_id: club_id },
        { destiny_id: club_id }
      ]
    },
    orderBy: { date: "asc" }, // orden cronológico ascendente
    take: 10, // Solo los 10 primeros
    include: {
      origin: true,  // club de origen
      destiny: true, // club destino
      player: {
        select: {
          name: true,
          second_name: true,
          image_url: true,
        }
      }
    }
  });

