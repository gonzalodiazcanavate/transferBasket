/**
 * @file Componente que contiene la imagen y datos básicos del jugador.
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {Link} from "react-router-dom";
import {config} from "../config/apiConfig";
import {formatNationalities, formatDate} from "../utils/format";
import {
  Box,
  Card,
  CardMedia,
  Typography,
  Stack,
  Chip
} from "@mui/material";

// Ruta a imagen del jugador
const BACKEND = config.assetsUrl;

const PlayerHeader = ({player}) => {
  const {
    name,
    second_name,
    age,
    birth_date,
    height,
    position,
    club,
    image_url,
    value,
    salary,
    nationalities
  } = player;

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
          <Chip label={`Nacido: ${formatDate(birth_date)}`} />
          <Chip label={`Altura: ${height}`} />
          <Chip label={`Nacionalidad: ${formatNationalities(nationalities)}`} />
        </Stack>

        <Typography sx={{mt: 2}}>
          <strong>Posición:</strong> {position}
        </Typography>

        <Typography component="div">
          <Stack 
            component={Link} 
            to={`/equipo/${club.id}`}
            direction="row" 
            spacing={1} 
            alignItems="center" 
            sx={{display: "inline-flex"}}>
            <Typography><strong>Club Actual: </strong></Typography>

            {/* ICONO CLUB */}
            <Box
              component="img"
              src={
                club?.image_url
                  ? `${BACKEND}/clubs/${club.image_url}`
                  : `${BACKEND}/default-club.png`
              }
              alt={club?.name}
              sx={{
                width: 28,
                height: 28,
                objectFit: "contain",
              }}
            />

            {/* NOMBRE CLUB */}
            <Typography>{club?.name}</Typography>
          </Stack>
        </Typography>

        {value && (
          <Chip
            label={`Valor mercado: ${value}€`}
            color="primary"
            sx={{mt: 2, mr: 2}}
          />
        )}
        {salary && (
          <Chip
            label={`Salario: ${salary}€`}
            color="primary"
            sx={{mt: 2, mr: 2}}
          />
        )}
      </Box>
    </Card>
  );
};

export default PlayerHeader;