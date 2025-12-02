/**
 * @file Hook personalizado para fetch condicional de datos.
 */
import {useState, useEffect} from "react";
import {getFullPlayers} from "../services/playersApi";
import {getClubsWithValue} from "../services/clubsApi";
import {getTransfers} from "../services/transfersApi";

export const useData = (key) => {
  const [players, setPlayers] = useState(null);
  const [clubs, setClubs] = useState(null);
  const [transfers, setTransfers] = useState(null);
  const [loading, setLoading] = useState(null);

  let [playersRes, clubsRes, transfersRes] = [];

  // UseEffect que fetche traspasos, jugadores y clubs.
  useEffect(() => {
    const fetchAll = async (key) => {
      if (!key) return;
      try {
        setLoading(true);
        switch (key) {
        case "Players":
          playersRes = await getFullPlayers();
          setPlayers(playersRes);
          break;
        case "Clubs":
          clubsRes = await getClubsWithValue();
          setClubs(clubsRes);
          break;
        case "Transfers":
          transfersRes = await getTransfers();
          setTransfers(transfersRes);
          break;
        
        default:
          [playersRes, clubsRes, transfersRes] =
                    await Promise.all([
                      getFullPlayers(),
                      getClubsWithValue(),
                      getTransfers(),
                    ]);
          setPlayers(playersRes);
          setClubs(clubsRes);
          setTransfers(transfersRes);
          break;
        }
      } catch (error) {
        console.error("Error cargando datos:", error);
      } finally {
        setLoading(false);
      }
    };
  
    fetchAll(key);
  }, []);

  return {
    loading,
    players,
    clubs,
    transfers
  };
};
