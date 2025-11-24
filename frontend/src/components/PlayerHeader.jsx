/**
 * @file Componente que contiene la imagen y datos básicos del jugador.
 */
import React from "react";
import {config} from "../config/apiConfig";
import {
  Box,
  Card,
  CardMedia,
  Typography,
  Stack,
  Chip
} from "@mui/material";

const PlayerHeader = ({player}) => {
  const {
    name,
    second_name,
    age,
    birth_date,
    nationality,
    height,
    position,
    club_id,
    image_url,
    value
  } = player;

  // Ruta a imagen del jugador
  const BACKEND = config.assetsUrl;
  console.log(`${BACKEND}/players/${image_url}`);

  return (
    <Card
      sx={{
        display: "flex",
        flexDirection: {xs: "column", sm: "row"},
        p: 2,
        gap: 2,
        alignItems: "center"
      }}
    >
      {/* --- Imagen jugador --- */}
      <CardMedia
        component="img"
        image={`${BACKEND}/players/${image_url}`}
        alt={name}
        sx={{
          width: {xs: "100%", sm: 160},
          height: {xs: 260, sm: 160},
          objectFit: "cover",
          borderRadius: 2
        }}
      />

      {/* --- Datos jugador --- */}
      <Box sx={{flex: 1}}>
        <Typography variant="h5" fontWeight="bold">
          {name + " " + second_name}
        </Typography>

        <Stack direction="row" spacing={1} sx={{mt: 1, flexWrap: "wrap"}}>
          <Chip label={`${age} años`} />
          <Chip label={`Nacido: ${birth_date}`} />
          <Chip label={`Altura: ${height}`} />
          <Chip label={nationality} />
        </Stack>

        <Typography sx={{mt: 2}}>
          <strong>Posición:</strong> {position}
        </Typography>

        <Typography>
          <strong>Club actual:</strong> {club_id}
        </Typography>

        {value && (
          <Chip
            label={`Valor mercado: ${value} M€`}
            color="primary"
            sx={{mt: 2}}
          />
        )}
      </Box>
    </Card>
  );
};

export default PlayerHeader;