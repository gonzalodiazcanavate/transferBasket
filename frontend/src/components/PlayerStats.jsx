
import React from "react";
import {Box,Grid,Typography} from "@mui/material";
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
