/**
 * @file Contenedor del grid de stat del jugador y de la gráfica de stats
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {Box} from "@mui/material";
import StatsGrid from "./StatsGrid";
import StatsChart from "./StatsChart";

const PlayerStats = ({player}) => {
  return (
    <Box sx={{display: "flex", flexDirection: {xs: "column", md: "row"}, gap: 2}}>
      <StatsGrid player={player} />
      <StatsChart player={player}/>
    </Box>
  );
};

export default PlayerStats;
