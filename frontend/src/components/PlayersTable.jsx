/**
 * @file Tabla de jugadores
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {Link} from "react-router-dom";
import {config} from "../config/apiConfig";
import {
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Paper,
  Box,
  Avatar,
  Typography,
  useMediaQuery,
  useTheme,
  Stack
} from "@mui/material";
import {formatNationalities, formatValue} from "../utils/format";

const BACKEND = config.assetsUrl;

const PlayersTable = ({players, max=10}) => {
  if (!players || players.length === 0) {
    return <Typography>No hay transferencias registradas.</Typography>;
  }

  // Certificamos que el número de jugadores no sobrepasa el máximo deseado
  const playersLimited = players.length > max ? players.slice(0, max) : players;
  // Para MediaQuerys
  const theme = useTheme();
  const isMdUp = useMediaQuery(theme.breakpoints.up("md"));

  return (
    <TableContainer component={Paper} sx={{maxWidth: "100%", overflowX: "auto"}}>
      <Table aria-label="tabla de jugadores">
        <TableHead sx={{backgroundColor: "#f5f5f5"}}>
          <TableRow>
            <TableCell sx={{fontSize: `${isMdUp ? "1rem" : "0.85rem"}`, textAlign: {md: "center"}}}>
              <strong>Jugador</strong>
            </TableCell>
            <TableCell sx={{fontSize: `${isMdUp ? "1rem" : "0.85rem"}`, textAlign: {md: "center"}}}>
              <strong>Edad</strong>
            </TableCell>
            <TableCell sx={{fontSize: `${isMdUp ? "1rem" : "0.85rem"}`, textAlign: {md: "center"}}}>
              <strong>Nacionalidad</strong>
            </TableCell>
            <TableCell sx={{fontSize: `${isMdUp ? "1rem" : "0.85rem"}`, textAlign: {md: "center"}}}>
              <strong>Club</strong>
            </TableCell>
            <TableCell sx={{fontSize: `${isMdUp ? "1rem" : "0.85rem"}`, textAlign: {md: "center"}}}>
              <strong>Valor</strong>
            </TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {playersLimited.map((player) => (
            <TableRow key={player.id}>
              {/* JUGADOR IMG + NOMBRE */}
              <TableCell sx={{textAlign: "left"}}>
                <Stack 
                  component={Link} 
                  to={`/jugador/${player.id}`}
                  direction="row" 
                  spacing={1} 
                  alignItems="center" 
                  sx={{display: "inline-flex", pl: isMdUp ? 4 : 0}}
                >
                  {/* ICONO JUGADOR */}
                  <Avatar
                    src={
                      player?.image_url
                        ? `${BACKEND}/players/${player?.image_url}`
                        : `${BACKEND}/default.png`
                    }
                    sx={{width: 32, height: 32}}
                  />
                  {/* NOMBRE JUGADOR */}
                  <Typography sx={{display: {xs: "none", md: "inherit"}}}>{player?.name} {player?.second_name}</Typography>
                </Stack>
              </TableCell>
              
              <TableCell sx={{textAlign: "center"}}>{player.age || "—"}</TableCell>
              <TableCell align="center">
                <Typography sx={{fontSize: "0.85rem"}}>
                  {formatNationalities(player.nationalities)}
                </Typography>
              </TableCell>
              {/*CLUB */}
              <TableCell sx={{textAlign: "left"}}>
                <Stack 
                  component={Link} 
                  to={`/equipo/${player.club.id}`}
                  direction="row" 
                  spacing={1} 
                  alignItems="center" 
                  sx={{display: "inline-flex", pl: {xs: 0, md: 20, lg: 40}}}>
                  {/* ICONO CLUB */}
                  <Box
                    component="img"
                    src={
                      player.club?.image_url
                        ? `${BACKEND}/clubs/${player.club.image_url}`
                        : `${BACKEND}/default.png`
                    }
                    alt={player.club?.name}
                    sx={{width: 32, height: 32, objectFit: "contain"}}
                  />
                  {/* NOMBRE CLUB */}
                  <Typography sx={{display: {xs: "none", md: "inherit"}}}>{player.club?.name}</Typography>
                </Stack>
             
              </TableCell>
              {/* VALOR JUGADOR */}
              <TableCell sx={{textAlign: "center"}}>
                <Typography>
                  {formatValue(player.value)}
                </Typography>
              </TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
  );
};

export default PlayersTable;