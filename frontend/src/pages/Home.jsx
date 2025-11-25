/**
 * @file Índice/Home de transferbasket
 */
// eslint-disable-next-line no-unused-vars
import React, {useEffect, useState} from "react";
import TablaJugadores from "../pages/TablaJugadores";
import Header from "../components/Header"
import Footer from "../components/Footer"
import HomeSlider from "../components/HomeSlider";
import {
  Typography,
  Box,
  Tabs,
  Tab,
} from "@mui/material";
import {useHome} from "../hooks/useHome";

const Home = () => {
  const {
    value,
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
            {value === 0 && <TablaJugadores />}
            {value === 1 && (
              <Typography variant="h6" color="text.secondary">
                Próximamente: listado detallado de equipos, plantillas y valores.
              </Typography>
            )}
            {value === 2 && (
              <Typography variant="h6" color="text.secondary">
                 Próximamente: historial de transferencias con fechas, valores y clubes involucrados.
              </Typography>
            )}
          </Box>
        </Box>
        {/* Footer */}
        <Footer/>
      </Box>
    </>
  );
};

export default Home;