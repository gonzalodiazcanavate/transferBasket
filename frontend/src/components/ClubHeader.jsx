/**
 * @file Componente que contiene la imagen y datos básicos del club.
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {config} from "../config/apiConfig";
import {formatDate} from "../utils/format";
import {
  Avatar,
  Box,
  Card,
  CardMedia,
  Typography,
  Stack,
  Chip
} from "@mui/material";

// Ruta a imagenes
const BACKEND = config.assetsUrl;

const ClubHeader = ({club}) => {
  const {
    name,
    pitch,
    city,
    capacity,
    start_date,
    titles,
    image_url,
    league,
    total_value,
  } = club;

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
      {/* --- Imagen club --- */}
      <CardMedia
        component="img"
        image={`${BACKEND}/clubs/${image_url}`}
        alt={name}
        sx={{
          width: {xs: "100%", sm: 160},
          height: {xs: 260, sm: 160},
          objectFit: "contain",
          borderRadius: 2
        }}
      />

      {/* --- Datos Club --- */}
      <Box sx={{flex: 1}}>
        <Typography variant="h5" fontWeight="bold">{name}</Typography>

        <Stack direction="row" spacing={1} sx={{mt: 1, flexWrap: "wrap"}}>
          <Chip label={`Fundación: ${formatDate(start_date)}`} />
          <Chip label={`Estadio: ${pitch}`} />
          <Chip label={`Capacidad: ${capacity}`} />
          <Chip label={`Ciudad: ${city}`} />
        </Stack>

        <Stack direction="row" mt={2} spacing={2} alignItems="center">
          <Typography><strong>Liga: </strong></Typography>
          {/* ICONO LIGA */}
          <Avatar
            src={
              league?.image_url
                ? `${BACKEND}/leagues/${league.image_url}`
                : `${BACKEND}/default-club.png`
            }
            sx={{width: 32, height: 32}}
          />
          {/* NOMBRE LIGA */}
          <Typography>{league?.name}</Typography>
        </Stack>

        <Typography mt={1}>
          <strong>Títulos:</strong> {titles}
        </Typography>

        {total_value && (
          <Chip
            label={`Valor mercado: ${total_value}€`}
            color="primary"
            sx={{mt: 2, mr: 2}}
          />
        )}
      </Box>
    </Card>
  );
};

export default ClubHeader;