/**
 * @file Componente que representa cada recudaro con un stat de un jugador
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {Paper, Typography} from "@mui/material";
const StatCard = ({label, value}) => (
  <Paper
    elevation={2}
    sx={{
      minWidth: "160px",
      p: 2,
      textAlign: "center",
      borderRadius: 2
    }}
  >
    <Typography variant="body2" color="text.secondary">
      {label}
    </Typography>

    <Typography variant="h5" fontWeight="bold">
      {value}
    </Typography>
  </Paper>
);

export default StatCard;