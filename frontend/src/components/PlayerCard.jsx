/**
 * @file Card que muestra información sobre un jugador
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {Link} from "react-router-dom";
import {Card, CardActionArea, CardMedia, CardContent, Typography, Box} from "@mui/material";
import {config} from "../config/apiConfig";


const BACKEND = config.assetsUrl;

const PlayerCard = ({player}) => {
  return (
    <Card
      sx={{
        width: "100%",
        maxWidth: 260,
        mx: "auto",
        borderRadius: 3,
        overflow: "hidden",
        transition: "transform 0.25s ease, box-shadow 0.25s ease",
        "&:hover": {
          transform: "scale(1.04)",
          boxShadow: 6,
        },
      }}
    >
      <CardActionArea component={Link} to={`/jugador/${player.id}`}>
        <CardMedia
          component="img"
          src={`${BACKEND}/players/${player.image_url}`}
          alt={player.name}
          sx={{
            height: {xs: 200, md: "auto"},
            width: "100%",
            objectFit: "cover",
            display: "block"
          }}
        />

        <CardContent sx={{textAlign: "center"}}>
          <Typography variant="subtitle1" fontWeight={700}>
            {player.name} {player.second_name}
          </Typography>

          <Typography variant="body2" color="text.secondary">
            {player.age} años
          </Typography>

          <Box
            sx={{
              mt: 1,
              display: "inline-block",
              px: 1.2,
              py: 0.3,
              borderRadius: 2,
              backgroundColor: "primary.main",
              color: "white",
              fontSize: "0.75rem",
              fontWeight: 600,
            }}
          >
            {player.position}
          </Box>
        </CardContent>
      </CardActionArea>
    </Card>
  );
};

export default PlayerCard;