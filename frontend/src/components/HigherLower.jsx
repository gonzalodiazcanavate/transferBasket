// eslint-disable-next-line no-unused-vars
import React from "react";
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

  // ⛔ Pantalla de Fin
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

  // 🏆 Pantalla de victoria
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

      <Stack direction="column" spacing={2} alignItems="center" sx={{width: "100%"}}>
        {/*Jugador izquierda*/}
        <Card sx={{width: "100%", maxWidth: 280}}>
          <CardActionArea onClick={() => handleChoose("left")}>
            <CardMedia
              component="img"
              height="180"
              src={`/assets/players/${current.image_url}`}
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
        <Card sx={{width: "100%", maxWidth: 280}}>
          <CardActionArea onClick={() => handleChoose("right")}>
            <CardMedia
              component="img"
              height="180"
              src={`/assets/players/${opponent.image_url}`}
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
