import React, { useEffect, useState } from "react";
import {
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Paper,
  Container,
  Typography,
  Box,
  CircularProgress,
} from "@mui/material";
import SportsBasketballIcon from "@mui/icons-material/SportsBasketball";

interface Jugador {
  id: number;
  name: string;
  second_name: string;
  position: string;
  pp: number;
  value: number;
}

const TablaJugadores: React.FC = () => {
  const [jugadores, setJugadores] = useState<Jugador[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetch("http://localhost:3000/jugadores")
      .then((res) => res.json())
      .then((data: Jugador[]) => {
        // Ordenar por valor descendente
        const sorted = [...data].sort((a, b) => b.value - a.value);
        setJugadores(sorted.slice(0, 10));
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching players:", error);
        setLoading(false);
      });
  }, []);

  if (loading) {
    return (
      <Box display="flex" justifyContent="center" alignItems="center" minHeight="400px">
        <CircularProgress />
      </Box>
    );
  }

  return (
    <Container maxWidth="lg" sx={{ mt: 4, mb: 4 }}>
      <Box display="flex" alignItems="center" mb={3}>
        <SportsBasketballIcon sx={{ fontSize: 40, mr: 2, color: "primary.main" }} />
        <Typography variant="h4" component="h1">
          🏆 Top Jugadores Más Valiosos
        </Typography>
      </Box>

      <TableContainer component={Paper} elevation={3}>
        <Table sx={{ minWidth: 650 }} aria-label="tabla de jugadores">
          <TableHead>
            <TableRow sx={{ backgroundColor: "primary.main" }}>
              <TableCell sx={{ color: "white", fontWeight: "bold" }}>#</TableCell>
              <TableCell sx={{ color: "white", fontWeight: "bold" }}>Nombre</TableCell>
              <TableCell sx={{ color: "white", fontWeight: "bold" }}>Posición</TableCell>
              <TableCell sx={{ color: "white", fontWeight: "bold" }}>Puntos</TableCell>
              <TableCell sx={{ color: "white", fontWeight: "bold" }}>Valor</TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {jugadores.map((jugador, index) => (
              <TableRow
                key={jugador.id}
                sx={{
                  "&:nth-of-type(odd)": { backgroundColor: "background.default" },
                  "&:hover": { backgroundColor: "rgba(0,0,0,0.04)" },
                }}
              >
                <TableCell>{index + 1}</TableCell>
                <TableCell>
                  <Typography variant="body1" fontWeight="medium">
                    {jugador.name} {jugador.second_name}
                  </Typography>
                </TableCell>
                <TableCell>{jugador.position}</TableCell>
                <TableCell>{jugador.pp}</TableCell>
                <TableCell>
                  {new Intl.NumberFormat("es-ES", {
                    style: "currency",
                    currency: "EUR",
                    maximumFractionDigits: 0,
                  }).format(jugador.value)}
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>
    </Container>
  );
};

export default TablaJugadores;
