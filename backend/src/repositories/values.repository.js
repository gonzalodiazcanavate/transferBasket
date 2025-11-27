/**
 * @file Repositorio de valores de jugadores/clubes.
 */
import prisma from "../config/db.js";

// Trae todos los valores de un jugador de la base de datos.
export const getValuesByPlayerId = (player_id) => prisma.values.findMany({
  where: {player_id: player_id},
  orderBy: {date: "asc"},
});

// Trae el valor actual de un jugador de la base de datos.
export const getPlayerCurrentValue = async (player_id) => {
  const lastValue = await prisma.values.findFirst({
    where: { player_id },
    orderBy: { date: "desc" },
    select: {
      id: false,
      value: true,
      date: true,
      player_id: true
    }
  });

  return lastValue;
};


// Trae la suma de los valores de los jugadores de un club.
export const getTotalClubValue = async (club_id) => {
  const result = await prisma.$queryRaw`
    SELECT SUM(v.value) AS total_value
    FROM players p
    JOIN (
      SELECT DISTINCT ON (player_id) player_id, value, date
      FROM values
      ORDER BY player_id, date DESC
    ) v ON v.player_id = p.id
    WHERE p.club_id = ${Number(club_id)};
  `;

  return Number(result[0]?.total_value) || 0;
};