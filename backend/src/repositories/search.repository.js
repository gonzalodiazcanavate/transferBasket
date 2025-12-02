/**
 * @file Repositorio de busquedas.
 */
import prisma from "../config/db.js";

export const searchByText = async (text) => {
  const search = text.trim();

  const [players, clubs] = await Promise.all([
    prisma.players.findMany({
      where: {
        OR: [
          { name: { contains: search, mode: "insensitive" } },
          { second_name: { contains: search, mode: "insensitive" } }
        ]
      },
      select: {
        id: true,
        name: true,
        second_name: true,
        image_url: true,
        club: { select: { name: true } }
      }
    }),

    prisma.clubs.findMany({
      where: {
        name: { contains: search, mode: "insensitive" }
      },
      select: {
        id: true,
        name: true,
        image_url: true,
        league: { select: { name: true } }
      }
    })
  ]);

  return { players, clubs };
};