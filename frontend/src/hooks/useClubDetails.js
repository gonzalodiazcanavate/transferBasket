import {useEffect, useState} from "react";
import {getClubWithValue, getClubTransfers} from "../services/clubsApi.js"
import {getPlayersByClub} from "../services/playersApi.js";

export const useClubDetails = (id) => {
  const [club, setClub] = useState(null);
  const [players, setPlayers] = useState(null);
  const [transfers, setTransfers] = useState(null);
  const [loading, setLoading] = useState(true);

  // Cargar datos completos del club
  useEffect(() => {
    const fetchAll = async () => {
      try {
        setLoading(true);

        const [clubRes, playersRes, transfersRes] =
          await Promise.all([
            getClubWithValue(id),
            getPlayersByClub(id),
            getClubTransfers(id)
          ]);

        setClub(clubRes);
        setPlayers(playersRes);
        setTransfers(transfersRes);

      } catch (error) {
        console.error("Error cargando datos del club:", error);
      } finally {
        setLoading(false);
      }
    };

    fetchAll();
  }, [id]);

  return {
    club,
    players,
    transfers,
    loading
  };
};
