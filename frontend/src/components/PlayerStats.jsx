
import React from "react";
import {Box,Grid,Typography} from "@mui/material";
import StatsGrid from "./StatsGrid";
import StatsChart from "./StatsChart";

const PlayerStats = ({player}) => {
  return (
    <Box sx={{display: "flex"}}>
      <StatsGrid player={player} />
      <StatsChart player={player}/>
    </Box>
  );
};

export default PlayerStats;
