/**
 * @file Página de detalles del jugador
 */
// eslint-disable-next-line no-unused-vars
import React, {useEffect, useState} from "react";
import {useParams} from "react-router-dom";
import {Container, Box, CircularProgress, Typography} from "@mui/material";
import Header from "../components/Header";
import Footer from "../components/Footer";
import TransfersTable from "../components/TransfersTable";
import ClubHeader from "../components/ClubHeader"
import PlayersList from "../components/PlayersList"
import {useClubDetails} from "../hooks/useClubDetails.js";

const ClubDetails = () => {
  const {id} = useParams(); // obtenemos el id del jugador desde la URL
  const {club, players, transfers, loading} = useClubDetails(id);


  if (loading) {
    return (
      <Box sx={{display: "flex", justifyContent: "center", mt: 15}}>
        <CircularProgress />
      </Box>
    );
  }

  if (!club) {
    return (
      <Container>
        <Box sx={{mt: 15, textAlign: "center"}}>
          No se encontró el club.
        </Box>
      </Container>
    );
  }

  return (
    <>
      <Header />
      <Container maxWidth="lg" sx={{pb: 5, mt: {xs: 25, sm: 20, md: 10}, backgroundColor: "#F5F5F5", borderRadius: "8px"}}>
        <Box sx={{mt: 2, pt: 3}}>
          {/* Header con foto + info básica */}
          <ClubHeader club={club}/>
          {/* Plantilla del club */}
          <PlayersList players={players}/>
          {/* Historial de traspasos del club */}
          <Box my={{xs: 4, md: 10}}>
            <Typography variant="h5"><strong>Historial de Traspasos</strong></Typography>
            <TransfersTable transfers={transfers} />
          </Box>
        </Box>
      </Container>
      <Footer/>
    </>
  );
};

export default ClubDetails;
