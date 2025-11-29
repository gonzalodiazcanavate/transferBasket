/**
 * @file Índice/Home de transferbasket
 */

// eslint-disable-next-line no-unused-vars
import React, {useEffect, useState} from "react";
import TablaJugadores from "../pages/TablaJugadores";
import Header from "../components/Header"
import Footer from "../components/Footer"
import HomeSlider from "../components/HomeSlider";
import TransfersTable from "../components/TransfersTable";
import {
  Typography,
  CircularProgress,
  Box,
  Tabs,
  Tab,
} from "@mui/material";
import {useHome} from "../hooks/useHome";

const Home = () => {
  const {
    value,
    players,
    clubs,
    transfers,
    loading,
    isMobile,
    handleChange,
  } = useHome();

  return (
    <>
      {/* Header */}
      <Header/>
      {/* Main */}
      <Box component="main"
        sx={{
          backgroundColor: "#f8fbff",
          minHeight: "100vh",
          marginTop: "64px",
        }}
      >
        {/* Contenedor de slides */}
        <HomeSlider />

        {/* Tabs de secciones */}
        <Box sx={{width: "100%", bgcolor: "background.paper", mt: 4}}>
          <Tabs
            value={value}
            onChange={handleChange}
            centered
            textColor="primary"
            indicatorColor="primary"
            variant={isMobile ? "fullWidth" : "standard"}
            sx={{
              borderBottom: 1,
              borderColor: "divider",
              px: 2,
              "& .MuiTab-root": {
                fontWeight: 600,
                textTransform: "none",
                fontSize: "1rem",
              },
            }}
          >
            <Tab label="Jugadores" />
            <Tab label="Equipos" />
            <Tab label="Transferencias" />
          </Tabs>

          <Box sx={{p: {xs: 2, md: 4}}}>
            {/* Mientras se cargan los datos mostramos icono de carga */}
            {loading ? (
              <Box sx={{display: "flex", justifyContent: "center", gap: 1, mt: 5}}>
                <CircularProgress /> 
                <Typography variant="h6" color="text.secondary"> Cargando datos</Typography>
              </Box>
            ) :
              <>
                {value === 0 && <TablaJugadores />}

                {value === 1 && (
                  <Typography variant="h6" color="text.secondary">
                    Próximamente: listado detallado de equipos, plantillas y valores.
                  </Typography>
                )}

                {value === 2 && (
                  <Box>
                    <Typography variant="h5" color="text.primary" my={2}>
                      <strong>Traspasos Destacados:</strong>
                    </Typography>
                    <TransfersTable transfers={transfers} />
                  </Box>
                )}
              </>
            }
          </Box>
        </Box>
        {/* Footer */}
        <Footer/>
      </Box>
    </>
  );
};

export default Home;