
import React from "react";
import {Box,Grid,Typography} from "@mui/material";
import StatCard from "./StatCard";

const StatsGrid = ({player}) => {
  return (
    <Box sx={{mt: 3}}>
      <Typography variant="h6" mb={2}>
        Estadísticas del jugador
      </Typography>

      <Grid container spacing={2}>
        {/* Promedios */}
        <Grid item xs={6} sm={4}>
          <StatCard label="Puntos / Partido" value={player.pp} />
        </Grid>

        <Grid item xs={6} sm={4}>
          <StatCard label="Rebotes / Partido" value={player.rp} />
        </Grid>

        <Grid item xs={6} sm={4}>
          <StatCard label="Asistencias / Partido" value={player.ap} />
        </Grid>

        <Grid item xs={6} sm={4}>
          <StatCard label="Robos / Partido" value={player.sp} />
        </Grid>

        <Grid item xs={6} sm={4}>
          <StatCard label="Faltas / Partido" value={player.fp} />
        </Grid>

        {/* Porcentajes */}
        <Grid item xs={6} sm={4}>
          <StatCard label="Tiro de campo (%)" value={player.shot_pct} />
        </Grid>

        <Grid item xs={6} sm={4}>
          <StatCard label="Triples (%)" value={player.threes_pct} />
        </Grid>
      </Grid>
    </Box>
  );
};

export default StatsGrid;
