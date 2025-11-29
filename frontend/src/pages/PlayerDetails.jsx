/**
 * @file Página de detalles del jugador
 */
// eslint-disable-next-line no-unused-vars
import React, {useEffect, useState} from "react";
import {useParams} from "react-router-dom";
import {Container, Box, CircularProgress, Typography} from "@mui/material";
import Header from "../components/Header";
import Footer from "../components/Footer";
import PlayerHeader from "../components/PlayerHeader";
import PlayerStats from "../components/PlayerStats";
import ValuesSalariesChart from "../components/ValuesSalariesChart";
import TransfersTable from "../components/TransfersTable";
import HigherLower from "../components/HigherLower";
import {usePlayerDetails} from "../hooks/usePlayerDetails";

const PlayerDetails = () => {
  const {id} = useParams(); // obtenemos el id del jugador desde la URL
  const {player, values, salaries, transfers, loading} = usePlayerDetails(id);


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
          {/* Header con foto + info básica */}
          <PlayerHeader player={player} />

          {/* Stats del jugador */}
          <PlayerStats player={player} />
          {/* Contenedor historiales de salario y valores del jugador */}
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
          {/* Historial de traspasos del jugador */}
          <Box my={5}>
            <Typography variant="h5">Historial de Traspasos</Typography>
            <TransfersTable transfers={transfers} />
          </Box>
          
          <HigherLower initialPlayer={player} />
        </Box>
      </Container>
      <Footer/>
    </>
  );
};

export default PlayerDetails;
