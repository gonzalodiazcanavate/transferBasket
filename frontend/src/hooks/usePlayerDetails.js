import {useEffect, useState} from "react";
import {
  getFullPlayer,
  getPlayerValues,
  getPlayerSalaries,
  getPlayerTransfers
} from "../services/playersApi";

export const usePlayerDetails = (id) => {
  const [player, setPlayer] = useState(null);
  const [values, setValues] = useState(null);
  const [salaries, setSalaries] = useState(null);
  const [transfers, setTransfers] = useState(null);
  const [loading, setLoading] = useState(true);

  // 🔹 Cargar datos completos del jugador
  useEffect(() => {
    const fetchAll = async () => {
      try {
        setLoading(true);

        const [playerRes, valuesRes, salariesRes, transfersRes] =
          await Promise.all([
            getFullPlayer(id),
            getPlayerValues(id),
            getPlayerSalaries(id),
            getPlayerTransfers(id)
          ]);

        setPlayer(playerRes);
        setValues(valuesRes);
        setSalaries(salariesRes);
        setTransfers(transfersRes);

      } catch (error) {
        console.error("Error cargando datos del jugador:", error);
      } finally {
        setLoading(false);
      }
    };

    fetchAll();
  }, [id]);

  return {
    player,
    values,
    salaries,
    transfers,
    loading
  };
};
