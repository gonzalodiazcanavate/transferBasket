/**
 * @file Página de detalles del jugador
 */
import React, {useEffect, useState} from "react";
import {useParams} from "react-router-dom";
import {Container, Box, CircularProgress, Typography} from "@mui/material";

import {getFullPlayer, getPlayerValues, getPlayerSalaries, getPlayerTransfers} from "../services/playersApi";
import Header from "../components/Header";
import Footer from "../components/Footer";
import PlayerHeader from "../components/PlayerHeader";
import PlayerStats from "../components/PlayerStats";
import ValuesSalariesChart from "../components/ValuesSalariesChart";
import PlayerTransfers from "../components/PlayerTransfers";

const PlayerDetails = () => {
  const {id} = useParams(); // obtenemos el id del jugador desde la URL
  const [player, setPlayer] = useState(null);
  const [values, setValues] = useState(null);
  const [salaries, setSalaries] = useState(null);
  const [transfers, setTransfers] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchPlayer = async () => {
      try {
        setLoading(true);
        const data = await getFullPlayer(id);
        setPlayer(data);
      } catch (err) {
        console.error("Error cargando jugador:", err);
      } finally {
        setLoading(false);
      }
    };

    fetchPlayer();
  }, [id]);

  useEffect(() => {
    const fetchPlayerValues = async () => {
      try {
        setLoading(true);
        const data = await getPlayerValues(id);
        setValues(data);
      } catch (err) {
        console.error("Error cargando historial de valores del jugador:", err);
      } finally {
        setLoading(false);
      }
    };

    fetchPlayerValues();
  }, [player]);

  useEffect(() => {
    const fetchPlayerSalaries = async () => {
      try {
        setLoading(true);
        const data = await getPlayerSalaries(id);
        setSalaries(data);
      } catch (err) {
        console.error("Error cargando historial de valores del jugador:", err);
      } finally {
        setLoading(false);
      }
    };

    fetchPlayerSalaries();
  }, [player]);

  useEffect(() => {
    const fetchPlayerTransfers = async () => {
      try {
        setLoading(true);
        const data = await getPlayerTransfers(id);
        setTransfers(data);
      } catch (err) {
        console.error("Error cargando historial de valores del jugador:", err);
      } finally {
        setLoading(false);
      }
    };

    fetchPlayerTransfers();
  }, [player]);

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
    <>
      <Header />
      <Container maxWidth="lg" sx={{pb: 5, mt: {xs: 25, md: 10}, backgroundColor: "#F5F5F5", borderRadius: "8px"}}>
        <Box sx={{mt: 2, pt: 3}}>
          {/* 🔵 Header con foto + info básica */}
          <PlayerHeader player={player} />

          {/* 🔶 Secciones futuras aquí */}
          {/* Stats del jugador */}
          <PlayerStats player={player} />
          <Box
            sx={{
              display: "flex",
              flexDirection: {xs: "column", md: "row"},
              gap: 3
            }}
          >
            {/* Valores del jugador */}
            <Box sx={{flex: 1, minWidth: 0}}>
              <ValuesSalariesChart values={values} title='Historial de Valores'/>
            </Box>
            {/* Salarios del jugador */}
            <Box sx={{flex: 1, minWidth: 0}}>
              <ValuesSalariesChart values={salaries} title='Historial de Salarios'/>
            </Box>
          </Box>
          <Box my={5}>
            <Typography variant="h5">Historial de Traspasos</Typography>
            <PlayerTransfers transfers={transfers} />
          </Box>
          
          {/* <HigherLower initialPlayer={player} /> */}
        </Box>
      </Container>
      <Footer/>
    </>
  );
};

export default PlayerDetails;
