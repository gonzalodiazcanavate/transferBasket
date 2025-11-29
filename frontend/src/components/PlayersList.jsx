/**
 * @file Listado de la plantilla de un club
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {Box, Typography, Grid} from "@mui/material";
import PlayerCard from "./PlayerCard";

const PlayersList = ({players}) => {
  return (
    <Box sx={{mt: {xs: 4, md: 8}}}>
      <Typography variant="h5" textAlign={{xs:"center", md: "initial"}} fontWeight={700} mb={4}>
        Plantilla
      </Typography>

      <Grid container spacing={5} justifyContent="center">
        {players.map((player) => (
          <Grid
            item
            xs={12}
            sm={6}
            md={4}
            lg={3}
            key={player.id}
          >
            <PlayerCard player={player} />
          </Grid>
        ))}
      </Grid>
    </Box>
  );
};

export default PlayersList;
