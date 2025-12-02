// src/pages/TablaEquipos.jsx
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
} from "@mui/material";
import {getClubs} from "../services/clubsApi";

const BACKEND = config.assetsUrl;

const TablaEquipos = ({ clubs = null }) => {
  const [equipos, setEquipos] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    // Si se pasan clubs como prop, usarlos directamente
    if (clubs) {
      setEquipos(clubs);
      setLoading(false);
      return;
    }

    // Si no hay prop, hacer fetch como antes
    const cargarEquipos = async () => {
      try {
        const data = await getClubs();
        setEquipos(data);
      } catch (err) {
        setError(err.message || "Error al cargar los equipos");
      } finally {
        setLoading(false);
      }
    };

    cargarEquipos();
  }, [clubs]);

  if (loading) {
    return (
      <Box sx={{display: "flex", justifyContent: "center", py: 4}}>
        <CircularProgress />
        <Typography sx={{ml: 2}}>Cargando equipos...</Typography>
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

  if (!equipos || equipos.length === 0) {
    return (
      <Typography color="text.secondary" textAlign="center" py={4}>
        No hay equipos disponibles
      </Typography>
    );
  }

  return (
    <TableContainer component={Paper} sx={{maxWidth: "100%", overflowX: "auto"}}>
      <Table sx={{minWidth: 650}} aria-label="tabla de equipos">
        <TableHead sx={{backgroundColor: "#f5f5f5"}}>
          <TableRow>
            <TableCell sx={{fontWeight: 700}}>Equipo</TableCell>
            <TableCell sx={{fontWeight: 700}} align="center">Liga</TableCell>
            <TableCell sx={{fontWeight: 700}} align="right">Valor Total</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {equipos.map((equipo) => (
            <TableRow
              key={equipo.id || equipo.name}
              component={Link}
              to={`/equipo/${equipo.id}`}
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
                  <Box
                    component="img"
                    src={equipo.image_url ? `${BACKEND}/clubs/${equipo.image_url}` : `${BACKEND}/default.png`}
                    alt={equipo.name}
                    sx={{width: 45, height: 45, objectFit: "contain"}}
                  />
                  <Typography sx={{fontWeight: 600, fontSize: "0.95rem"}}>
                    {equipo.name}
                  </Typography>
                </Box>
              </TableCell>
              <TableCell align="center">
                {equipo.league?.name ? (
                  <Box sx={{display: "flex", alignItems: "center", justifyContent: "center", gap: 1}}>
                    <Box
                      component="img"
                      src={(() => {
                        if (equipo.league.id === 1) return `${BACKEND}/leagues/1-ligaEndesa.png`;
                        if (equipo.league.id === 2) return `${BACKEND}/leagues/2-ligaFrancesa.png`;
                        if (equipo.league.id === 3) return `${BACKEND}/leagues/3-ligaAlemana.png`;
                        return `${BACKEND}/default.png`;
                      })()}
                      alt={equipo.league.name}
                      sx={{width: 30, height: 30, objectFit: "contain"}}
                    />
                    <Typography sx={{fontSize: "0.85rem"}}>
                      {equipo.league.name}
                    </Typography>
                  </Box>
                ) : (
                  "—"
                )}
              </TableCell>
              <TableCell align="right" sx={{fontWeight: 600}}>
                {equipo.total_value
                  ? `${(equipo.total_value / 1000000).toFixed(2)} mill. €`
                  : "—"}
              </TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
  );
};

export default TablaEquipos;
