/**
 * @file Componente que contiene un juego de adivinar al jugador más anotador
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {config} from "../config/apiConfig";
import {
  Box,
  Typography,
  Card,
  CardActionArea,
  CardMedia,
  CardContent,
  Button,
  Stack
} from "@mui/material";
import {useHigherLower} from "../hooks/useHigherLower";

// Ruta a imagenes
const BACKEND = config.assetsUrl;

const HigherLower = ({initialPlayer}) => {
  const {
    current,
    opponent,
    score,
    gameOver,
    victory,
    handleChoose,
    resetGame
  } = useHigherLower(initialPlayer);

  // Pantalla de Fin de partida
  if (gameOver) {
    return (
      <Box sx={{mt: 4, textAlign: "center"}}>
        <Typography variant="h6" mb={2}>
          ❌ ¡Has fallado!
        </Typography>

        <Typography variant="h5" fontWeight={600} mb={3}>
          Puntuación: {score}
        </Typography>

        <Button variant="contained" onClick={resetGame}>
          Jugar de nuevo
        </Button>
      </Box>
    );
  }

  // Pantalla de victoria
  if (victory) {
    return (
      <Box sx={{mt: 4, textAlign: "center"}}>
        <Typography variant="h6" mb={2}>
          🏆 ¡Enhorabuena!
        </Typography>

        <Typography mb={2}>
          Has acertado a todos los jugadores del club.
        </Typography>

        <Typography variant="h5" fontWeight={600} mb={3}>
          Puntuación final: {score}
        </Typography>

        <Button variant="contained" onClick={resetGame}>
          Jugar de nuevo
        </Button>
      </Box>
    );
  }

  if (!opponent) return null;

  return (
    <Box sx={{mt: 4}}>
      <Typography variant="h6" textAlign="center" mb={1}>
        ¿Quién anota más?
      </Typography>

      <Typography variant="body1" textAlign="center" fontWeight={600} mb={3}>
        Puntuación: {score}
      </Typography>

      <Stack direction={{xs: "column", md: "row"}} spacing={2} alignItems="center" justifyContent="center" sx={{width: "100%"}}>
        {/*Jugador izquierda*/}
        <Card
          sx={{
            width: "100%",
            maxWidth: 280,
            transition: "transform 0.2s ease, box-shadow 0.2s ease",
            "&:hover": {
              transform: "scale(1.03)",
              boxShadow: 6,
            },
          }}
        >
          <CardActionArea onClick={() => handleChoose("left")}>
            <CardMedia
              component="img"
              height="80"
              src={current.image_url ?`${BACKEND}/players/${current.image_url}` : `${BACKEND}/default.png`}
              alt={current.name}
            />
            <CardContent>
              <Typography align="center" fontWeight={600}>
                {current.name} {current.second_name}
              </Typography>
            </CardContent>
          </CardActionArea>
        </Card>

        <Typography variant="h5" fontWeight={700}>VS</Typography>

        {/*Jugador derecha*/}
        <Card
          sx={{
            width: "100%",
            maxWidth: 280,
            transition: "transform 0.2s ease, box-shadow 0.2s ease",
            "&:hover": {
              transform: "scale(1.03)",
              boxShadow: 6,
            },
          }}
        >
          <CardActionArea onClick={() => handleChoose("right")}>
            <CardMedia
              component="img"
              height="80"
              src={opponent.image_url ? `${BACKEND}/players/${opponent.image_url}` : `${BACKEND}/default.png`}
              alt={opponent.name}
            />
            <CardContent>
              <Typography align="center" fontWeight={600}>
                {opponent.name} {opponent.second_name}
              </Typography>
            </CardContent>
          </CardActionArea>
        </Card>
      </Stack>
    </Box>
  );
};

export default HigherLower;
