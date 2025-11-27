/**
 * @file Repositorio de clubs.
 */
import prisma from "../config/db.js";
import { convertBigInt } from "../utils/sanitaze.js";

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

/**
 * Trae un club por id junto con total_value (suma del valor actual de sus jugadores).
 * No retorna los jugadores, solo el club y su total_value.
 */
export const getClubWithTotalValue = async (id) => {
  const club = await prisma.clubs.findUnique({
    where: { id },

    include: {
      players: {
        select: {
          values: {
            orderBy: { date: "desc" },
            take: 1,
            select: { value: true }
          }
        }
      }
    }
  });

  if (!club) return null;

  // Calcular la suma de los valores actuales de los jugadores
  const total_value = club.players.reduce((acc, player) => {
    const v = player.values[0]?.value ?? 0;
    return acc + v;
  }, 0);

  // Retornar el club sin los jugadores
  // eslint-disable-next-line no-unused-vars
  const { players, ...clubWithoutPlayers } = club;

  return {
    ...clubWithoutPlayers,
    total_value
  };
};

// Devolvemos todos los clubes con el valor total de sus jugadores
export const getAllClubsWithTotalValue = async () => {
  const result = await prisma.$queryRaw`
    SELECT
      c.*,
      COALESCE(SUM(v.value), 0) AS total_value
    FROM clubs c
    LEFT JOIN players p ON p.club_id = c.id
    LEFT JOIN (
      -- Último value por jugador
      SELECT DISTINCT ON (player_id) player_id, value
      FROM values
      ORDER BY player_id, date DESC
    ) v ON v.player_id = p.id
    GROUP BY c.id
    ORDER BY c.id;
  `;

  return convertBigInt(result);
};

