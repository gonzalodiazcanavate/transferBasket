/**
 * @file Página de traspasos de jugadores
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {
  Box,
  Container,
  Typography,
  Card,
  CardContent,
  Divider,
  CircularProgress,
} from "@mui/material";
import SwapHorizIcon from "@mui/icons-material/SwapHoriz";
import Header from "../components/Header";
import TransfersTable from "../components/TransfersTable";
import Footer from "../components/Footer";
import {useData} from "../hooks/useData";

const TransfersPage = () => {
  const {transfers, loading} = useData("Transfers");

  return (
    <>
      <Header />

      {/* MAIN */}
      <Box
        component="main"
        sx={{
          minHeight: "100vh",
          background: "linear-gradient(180deg, #f7f9fc 0%, #ffffff 100%)",
          pt: {xs: 18, md: 12},
          pb: 8,
          animation: "fadeIn 0.6s ease",
          "@keyframes fadeIn": {
            "0%": {opacity: 0, transform: "translateY(10px)"},
            "100%": {opacity: 1, transform: "translateY(0)"},
          },
        }}
      >

        <Container
          maxWidth="lg"
          sx={{
            display: "flex",
            flexDirection: "column",
            gap: 3,
          }}
        >
          {/* TÍTULO */}
          <Box sx={{textAlign: "center"}}>
            <SwapHorizIcon
              sx={{fontSize: 40, color: "#001f45", mb: 1}}
            />

            <Typography
              variant="h4"
              sx={{
                fontWeight: "700",
                mb: 1,
              }}
            >
              Traspasos destacados
            </Typography>

            <Typography
              variant="body1"
              sx={{
                color: "text.secondary",
                maxWidth: 500,
                mx: "auto",
              }}
            >
              Revisa los movimientos más relevantes de las últimas jornadas del mercado.
            </Typography>

            {/* Separador decorativo */}
            <Divider
              sx={{
                width: 80,
                height: 4,
                backgroundColor: "#001f45",
                mx: "auto",
                mt: 2,
                borderRadius: 2,
              }}
            />
          </Box>

          {/* CARD DE LA TABLA */}
          <Card
            elevation={4}
            sx={{
              borderRadius: 4,
              p: {xs: 1.5, sm: 2.5},
              backdropFilter: "blur(4px)",
            }}
          >
            <CardContent sx={{p: {xs: 0, sm: 1}}}>
              {/* Loader condicional */}
              {loading ? (
                <Box
                  sx={{
                    display: "flex",
                    justifyContent: "center",
                    alignItems: "center",
                    py: 4,
                  }}
                >
                  <CircularProgress size={42} thickness={4} />
                </Box>
              ) : (
                /* TRASPASOS */
                <TransfersTable transfers={transfers} />
              )}
            </CardContent>
          </Card>
        </Container>
      </Box>

      <Footer />
    </>
  );
};

export default TransfersPage;
