// src/pages/TablaJugadores.jsx
import React, {useState, useEffect} from "react";
import {
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Paper,
  Box,
  CircularProgress,
  Typography,
} from "@mui/material";
import {getPlayers} from "../services/playersApi";

const TablaJugadores = () => {
  const [jugadores, setJugadores] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const cargarJugadores = async () => {
      try {
        const data = await getPlayers();
        setJugadores(data);
      } catch (err) {
        setError(err.message || "Error al cargar los jugadores");
      } finally {
        setLoading(false);
      }
    };

    cargarJugadores();
  }, []);

  if (loading) {
    return (
      <Box sx={{display: "flex", justifyContent: "center", py: 4}}>
        <CircularProgress />
        <Typography sx={{ml: 2}}>Cargando jugadores...</Typography>
      </Box>
    );
  }

  if (error) {
    return (
      <Typography color="error" textAlign="center" py={4}>
        {error}
      </Typography>
    );
  }

  return (
    <TableContainer component={Paper} sx={{maxWidth: "100%", overflowX: "auto"}}>
      <Table sx={{minWidth: 650}} aria-label="tabla de jugadores">
        <TableHead>
          <TableRow>
            <TableCell>Nombre</TableCell>
            <TableCell align="right">Edad</TableCell>
            <TableCell>Posición</TableCell>
            <TableCell>Equipo</TableCell>
            <TableCell align="right">Valor de Mercado</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {jugadores.map((jugador) => (
            <TableRow key={jugador.id || jugador.nombre} hover>
              <TableCell sx={{fontWeight: 600}}>{jugador.nombre}</TableCell>
              <TableCell align="right">{jugador.edad || "—"}</TableCell>
              <TableCell>{jugador.posicion || "—"}</TableCell>
              <TableCell>{jugador.equipo?.nombre || jugador.equipoId || "—"}</TableCell>
              <TableCell align="right">
                {jugador.valorMercado ? `${jugador.valorMercado} €` : "—"}
              </TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
  );
};

export default TablaJugadores;