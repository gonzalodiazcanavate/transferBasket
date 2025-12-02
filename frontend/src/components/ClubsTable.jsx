/**
 * @file Tabla de equipos
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
  Stack,
  Typography,
  useTheme,
  useMediaQuery
} from "@mui/material";
import {formatValue} from "../utils/format";

const BACKEND = config.assetsUrl;

const ClubsTable = ({clubs, max=10}) => {
  if (!clubs || clubs.length === 0) {
    return (
      <Typography color="text.secondary" textAlign="center" py={4}>
        No hay equipos disponibles
      </Typography>
    );
  }

  // Certificamos que el número de clubs no sobrepase el máximo deseado
  const clubsLimited = clubs.length > max ? clubs.slice(0, max) : clubs;

  // Para MediaQuerys
  const theme = useTheme();
  const isMdUp = useMediaQuery(theme.breakpoints.up("md"));

  return (
    <TableContainer component={Paper} sx={{mt: 4}}>
      <Table aria-label="tabla de equipos">
        <TableHead sx={{backgroundColor: "#f5f5f5"}}>
          <TableRow>
            <TableCell sx={{fontSize: `${isMdUp ? "1rem" : "0.85rem"}`, textAlign: {md: "center"}}}>
              <strong>Equipo</strong>
            </TableCell>
            <TableCell sx={{fontSize: `${isMdUp ? "1rem" : "0.85rem"}`, textAlign: {md: "center"}}}>
              <strong>Liga</strong>
            </TableCell>
            <TableCell sx={{fontSize: `${isMdUp ? "1rem" : "0.85rem"}`, textAlign: {md: "center"}}}>
              <strong>Valor</strong>
            </TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {clubsLimited.map((club) => (
            <TableRow key={club.id}>
              {/* CLUB IMG + NOMBRE*/}
              <TableCell sx={{textAlign: "left"}}>
                <Stack 
                  component={Link} 
                  to={`/equipo/${club.id}`}
                  direction="row" 
                  spacing={1} 
                  alignItems="center" 
                  sx={{display: "inline-flex", pl: {xs: 0, md: 20}}}>
                  {/* ICONO CLUB */}
                  <Box
                    component="img"
                    src={
                      club?.image_url
                        ? `${BACKEND}/clubs/${club.image_url}`
                        : `${BACKEND}/default.png`
                    }
                    alt={club?.name}
                    sx={{width: 32, height: 32, objectFit: "contain"}}
                  />
                  {/* NOMBRE CLUB */}
                  <Typography sx={{display: {xs: "none", md: "inherit"}}}>{club?.name}</Typography>
                </Stack>
              </TableCell>
              {/* LIGA */}
              <TableCell sx={{textAlign: "left"}}>
                <Stack
                  direction="row"
                  spacing={1}
                  alignItems="center"
                  sx={{display: "inline-flex", pl: {xs: 0, md: 20, lg: 30}}}>
                  {/* ICONO LIGA */}
                  <Box
                    component="img"
                    src={
                      club.league?.image_url
                        ? `${BACKEND}/leagues/${club.league.image_url}`
                        : `${BACKEND}/default.png`
                    }
                    alt={club.league?.name}
                    sx={{width: 32, height: 32, objectFit: "contain"}}
                  />
                  {/* NOMBRE LIGA */}
                  <Typography sx={{display: {xs: "none", md: "inherit"}}}>{club.league?.name}</Typography>
                </Stack>
              </TableCell>
              {/* VALOR CLUB */}
              <TableCell>
                <Typography sx={{textAlign: "center"}}>
                  {formatValue(club.total_value)}
                </Typography>
                
              </TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
  );
};

export default ClubsTable;
