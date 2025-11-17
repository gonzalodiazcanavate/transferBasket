/**
 * @file Página de detalles del jugador
 */
import React, {useEffect, useState} from "react";
import {useParams} from "react-router-dom";
import {Container, Box, CircularProgress} from "@mui/material";

import {getPlayer} from "../services/playersApi";
import PlayerHeader from "../components/PlayerHeader";

const PlayerDetails = () => {
  const {id} = useParams(); // obtenemos el id del jugador desde la URL
  const [player, setPlayer] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchPlayer = async () => {
      try {
        const data = await getPlayer(id);
        setPlayer(data);
      } catch (err) {
        console.error("Error cargando jugador:", err);
      } finally {
        setLoading(false);
      }
    };

    fetchPlayer();
  }, [id]);

  if (loading) {
    return (
      <Box sx={{display: "flex", justifyContent: "center", mt: 5}}>
        <CircularProgress />
      </Box>
    );
  }

  if (!player) {
    return (
      <Container>
        <Box sx={{mt: 5, textAlign: "center"}}>
          No se encontró al jugador.
        </Box>
      </Container>
    );
  }

  return (
    <Container maxWidth="md" sx={{pb: 5}}>
      <Box sx={{mt: 2}}>
        {/* 🔵 Header con foto + info básica */}
        <PlayerHeader player={player} />

        {/* 🔶 Secciones futuras aquí */}
        {/* <PlayerStats player={player} /> */}
        {/* <PlayerValueChart history={player.valueHistory} /> */}
        {/* <PlayerTransfers transfers={player.transfers} /> */}
        {/* <HigherLower initialPlayer={player} /> */}
      </Box>
    </Container>
  );
};

export default PlayerDetails;
