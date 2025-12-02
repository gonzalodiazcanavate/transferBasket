// src/pages/TablaJugadores.jsx
import React, {useState, useEffect} from "react";
import {Link} from "react-router-dom";
import {config} from "../config/apiConfig";
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
  Avatar,
} from "@mui/material";
import {getPlayers} from "../services/playersApi";

const BACKEND = config.assetsUrl;

const TablaJugadores = ({ players = null }) => {
  const [jugadores, setJugadores] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    // Si se pasan jugadores como prop, usarlos directamente
    if (players) {
      setJugadores(players);
      setLoading(false);
      return;
    }

    // Si no hay prop, hacer fetch como antes
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
  }, [players]);

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
        <TableHead sx={{backgroundColor: "#f5f5f5"}}>
          <TableRow>
            <TableCell sx={{fontWeight: 700}}>Jugador</TableCell>
            <TableCell sx={{fontWeight: 700}} align="center">Edad</TableCell>
            <TableCell sx={{fontWeight: 700}} align="center">Nacionalidad</TableCell>
            <TableCell sx={{fontWeight: 700}} align="center">Club</TableCell>
            <TableCell sx={{fontWeight: 700}} align="right">Valor</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {jugadores.map((jugador) => (
            <TableRow
              key={jugador.id || jugador.name}
              component={Link}
              to={`/jugador/${jugador.id}`}
              hover
              sx={{
                "&:hover": { backgroundColor: "#f9f9f9", cursor: "pointer" },
                height: 70,
                textDecoration: "none",
                color: "inherit",
                display: "table-row",
              }}
            >
              <TableCell>
                <Box sx={{display: "flex", alignItems: "center", gap: 1.5}}>
                  <Avatar
                    src={jugador.image_url ? `${BACKEND}/players/${jugador.image_url}` : `${BACKEND}/default.png`}
                    alt={jugador.name}
                    sx={{width: 45, height: 45}}
                  />
                  <Box>
                    <Typography sx={{fontWeight: 600, fontSize: "0.95rem"}}>
                      {jugador.name}
                    </Typography>
                  </Box>
                </Box>
              </TableCell>
              <TableCell align="center">{jugador.age || "—"}</TableCell>
              <TableCell align="center">
                <Typography sx={{fontSize: "0.85rem"}}>
                  {jugador.nationalities && jugador.nationalities.length > 0 
                    ? jugador.nationalities.join('/')
                    : "Desconocida"}
                </Typography>
              </TableCell>
              <TableCell align="right" sx={{pr: 4}}>
                {jugador.club?.image_url ? (
                  <Link to={`/equipo/${jugador.club.id}`} style={{textDecoration: "none"}}>
                    <Box
                      component="img"
                      src={`${BACKEND}/clubs/${jugador.club.image_url}`}
                      alt={jugador.club?.name}
                      sx={{
                        width: 35,
                        height: 35,
                        objectFit: "contain",
                        cursor: "pointer",
                        "&:hover": { opacity: 0.8 }
                      }}
                    />
                  </Link>
                ) : (
                  <Typography sx={{fontSize: "0.85rem"}}>{jugador.club?.name || "—"}</Typography>
                )}
              </TableCell>
              <TableCell align="right" sx={{fontWeight: 600}}>
                {jugador.value
                  ? `${(jugador.value / 1000000).toFixed(2)} mill. €`
                  : "—"}
              </TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
  );
};

export default TablaJugadores;