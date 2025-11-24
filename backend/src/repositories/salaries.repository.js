/**
 * @file Repositorio de salarios de jugadores.
 */
import prisma from "../config/db.js";

// Trae todos los salarios de un jugador de la base de datos.
export const getSalariesByPlayerId = (player_id) => prisma.salaries.findMany({
  where: {player_id: player_id},
  orderBy: {date: "asc"},
});

// Trae el salario actual de un jugador de la base de datos.
export const getPlayerCurrentSalary = async (player_id) => {
  const lastValue = await prisma.salaries.findFirst({
    where: { player_id },
    orderBy: { date: "desc" },
    select: {
      id: false,
      salary: true,
      date: true,
      player_id: true
    }
  });

  return lastValue;
};


// Trae la suma de los salarios de los jugadores de un club.
export const getTotalClubSalaries = async (club_id) => {
  const result = await prisma.$queryRaw`
    SELECT SUM(s.salary) AS total_salary
    FROM players p
    JOIN (
      SELECT DISTINCT ON (player_id) player_id, salary, date
      FROM salaries
      ORDER BY player_id, date DESC
    ) s ON s.player_id = p.id
    WHERE p.club_id = ${Number(club_id)};
  `;

  return Number(result[0]?.total_salary) || 0;
};