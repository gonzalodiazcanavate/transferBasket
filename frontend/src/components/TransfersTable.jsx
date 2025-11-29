/**
 * @file Tabla con el historial de traspasos de un jugador
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {Link} from "react-router-dom";
import {config} from "../config/apiConfig";
import {
  Table, TableBody, TableCell, TableContainer, TableHead, TableRow,
  Paper, Box, Stack, Typography
} from "@mui/material";
import ArrowForwardIcon from "@mui/icons-material/ArrowForward";
import ArrowBackIcon from "@mui/icons-material/ArrowBack";
import {formatDate, formatValue} from "../utils/format";

// Ruta a imagen del jugador
const BACKEND = config.assetsUrl;

const TransfersTable = ({transfers}) => {
  if (!transfers || transfers.length === 0) {
    return <Typography>No hay transferencias registradas.</Typography>;
  }

  // Identificar el primer club propietario (para detectar vueltas de cesión)
  const firstLoan = transfers.find(t => t.type === "cesion");

  return (
    <TableContainer component={Paper} sx={{mt: 4}}>
      <Table>
        <TableHead>
          <TableRow >
            <TableCell sx={{textAlign: {md: "center"}}}><strong>Origen</strong></TableCell>
            <TableCell sx={{textAlign: {md: "center"}}}><strong>Fecha</strong></TableCell>
            <TableCell sx={{textAlign: {md: "center"}}}><strong>Valor</strong></TableCell>
            <TableCell sx={{textAlign: {md: "center"}}}><strong>Destino</strong></TableCell>
          </TableRow>
        </TableHead>

        <TableBody>
          {transfers.map((t) => {

            // Detectar retorno de cesión
            const isReturnLoan =
              t.type === "cesion" &&
              firstLoan &&
              t.destiny_id === firstLoan.origin_id;

            // Objetos intercambiados si es retorno
            const visualOrigin = isReturnLoan ? t.destiny : t.origin;
            const visualDestiny = isReturnLoan ? t.origin : t.destiny;

            return (
              <TableRow key={t.id}>

                {/*CLUB ORIGEN */}
                <TableCell>
                  <Stack 
                    component={Link} 
                    to={`/equipo/${visualOrigin.id}`}
                    direction="row" 
                    spacing={1} 
                    alignItems="center" 
                    sx={{display: "inline-flex"}}>
                    {/* ICONO CLUB */}
                    <Box
                      component="img"
                      src={
                        visualOrigin?.image_url
                          ? `${BACKEND}/clubs/${visualOrigin.image_url}`
                          : `${BACKEND}/default-club.png`
                      }
                      alt={visualOrigin?.name}
                      sx={{width: 32, height: 32, objectFit: "contain"}}
                    />
                    {/* NOMBRE CLUB */}
                    <Typography sx={{display: {xs: "none", md: "inherit"}}}>{visualOrigin?.name}</Typography>
                  </Stack>
                </TableCell>

                {/* FECHA */}
                <TableCell sx={{textAlign: {md: "center"}}}>{formatDate(t.date)}</TableCell>

                {/* VALOR + FLECHA */}
                <TableCell>
                  <Stack direction="column" alignItems="center">
                    <Typography variant="body2" sx={{textTransform: "capitalize"}}>
                      {isReturnLoan ? "Vuelta de Cesión" : t.type}
                    </Typography>

                    {isReturnLoan ? (
                    // Cambiamos la dirección de las flechas si es retorno de cesión
                      <ArrowBackIcon
                        sx={{
                          color: t.type === "traspaso" ? "green" : "orange",
                          fontSize: 28,
                          mt: 0.5
                        }}
                      />
                    ) : (
                      <ArrowForwardIcon
                        sx={{
                          color: t.type === "traspaso" ? "green" : "orange",
                          fontSize: 28,
                          mt: 0.5
                        }}
                      />
                    )}

                    <Typography variant="body2" sx={{mt: 0.5}}>
                      {formatValue(t.value)}
                    </Typography>
                  </Stack>
                </TableCell>

                {/* CLUB DESTINO */}
                <TableCell>
                  <Stack 
                    component={Link} 
                    to={`/equipo/${visualDestiny.id}`}
                    direction="row" 
                    spacing={1} 
                    alignItems="center" 
                    sx={{display: "inline-flex"}}>
                    {/* ICONO CLUB */}
                    <Box
                      component="img"
                      src={
                        visualOrigin?.image_url
                          ? `${BACKEND}/clubs/${visualDestiny.image_url}`
                          : `${BACKEND}/default-club.png`
                      }
                      alt={visualDestiny?.name}
                      sx={{width: 32, height: 32, objectFit: "contain"}}
                    />
                    {/* NOMBRE CLUB */}
                    <Typography sx={{display: {xs: "none", md: "inherit"}}}>{visualDestiny?.name}</Typography>
                  </Stack>
                </TableCell>

              </TableRow>
            );
          })}
        </TableBody>
      </Table>
    </TableContainer>
  );
};

export default TransfersTable;
