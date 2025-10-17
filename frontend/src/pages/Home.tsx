import React, { useEffect, useState } from "react";
import { getPlayers } from "../services/jugadoresApi.js";
import {
  ThemeProvider,
  createTheme,
  CssBaseline,
  Container,
  Typography,
  Paper,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
} from "@mui/material";
import Navigation from "../components/Navigation"; // 👈 Importa el nav

// 🎨 Tema azul pastel
const theme = createTheme({
  palette: {
    primary: { main: "#80bfff" },
    secondary: { main: "#b3e0ff" },
    background: {
      default: "#f0f6ff",
      paper: "#ffffff",
    },
    text: { primary: "#1a237e" },
  },
  typography: {
    fontFamily: "'Poppins', sans-serif",
    h4: { fontWeight: 700 },
  },
});

const Home = () => {
  const [players, setPlayers] = useState([]);
  const tableHeaders = ["ID", "Nombre", "Posición", "Puntos"];

  useEffect(() => {
    const fetchData = async () => {
      try {
        const data = await getPlayers();
        setPlayers(data);
      } catch (error) {
        console.error("Error fetching players:", error);
      }
    };
    fetchData();
  }, []);

  return (
    <>
      {/* 🧭 Navigation fuera del ThemeProvider */}
      <Navigation />

      <ThemeProvider theme={theme}>
        <CssBaseline />
        
        {/* 🧱 Contenido principal (margen ajustado por el sidebar) */}
        <main className="pt-16 md:ml-64 bg-[#f0f6ff] min-h-screen">
          <Container sx={{ py: 6 }}>
            <Typography
              variant="h4"
              align="center"
              color="primary"
              gutterBottom
            >
              Estadísticas de Jugadores
            </Typography>

            <TableContainer
              component={Paper}
              elevation={4}
              sx={{
                borderRadius: 3,
                overflow: "hidden",
                backgroundColor: "background.paper",
              }}
            >
              <Table>
                <TableHead>
                  <TableRow sx={{ backgroundColor: "primary.main" }}>
                    {tableHeaders.map((header) => (
                      <TableCell
                        key={header}
                        sx={{
                          color: "white",
                          fontWeight: 600,
                          textTransform: "uppercase",
                          letterSpacing: 0.5,
                        }}
                      >
                        {header}
                      </TableCell>
                    ))}
                  </TableRow>
                </TableHead>
                <TableBody>
                  {players.map((player) => (
                    <TableRow
                      key={player.id}
                      hover
                      sx={{
                        "&:nth-of-type(even)": {
                          backgroundColor: "secondary.main",
                          opacity: 0.2,
                        },
                        "&:hover": { backgroundColor: "#d6ebff" },
                        transition: "background-color 0.2s ease-in-out",
                      }}
                    >
                      <TableCell>{player.id}</TableCell>
                      <TableCell>{player.name}</TableCell>
                      <TableCell>{player.position}</TableCell>
                      <TableCell>{player.pp}</TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </TableContainer>
          </Container>
        </main>
      </ThemeProvider>
    </>
  );
};

export default Home;
