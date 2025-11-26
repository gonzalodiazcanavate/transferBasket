// eslint-disable-next-line no-unused-vars
import React from "react";
import {
  Table, TableBody, TableCell, TableContainer, TableHead, TableRow,
  Paper, Avatar, Stack, Typography
} from "@mui/material";
import ArrowForwardIcon from "@mui/icons-material/ArrowForward";
import ArrowBackIcon from "@mui/icons-material/ArrowBack";
import {formatDate, formatValue} from "../utils/format";

const PlayerTransfers = ({transfers}) => {
  if (!transfers || transfers.length === 0) {
    return <Typography>No hay transferencias registradas.</Typography>;
  }

  // Identificar el primer club propietario (para detectar vueltas de cesión)
  const firstLoan = transfers.find(t => t.type === "cesion");

  return (
    <TableContainer component={Paper} sx={{mt: 4}}>
      <Table>
        <TableHead>
          <TableRow>
            <TableCell><strong>Origen</strong></TableCell>
            <TableCell><strong>Fecha</strong></TableCell>
            <TableCell><strong>Valor</strong></TableCell>
            <TableCell><strong>Destino</strong></TableCell>
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
                  <Stack direction="row" spacing={2} alignItems="center">
                    {/* ICONO CLUB */}
                    <Avatar
                      src={
                        visualOrigin?.image_url
                          ? `/assets/clubs/${visualOrigin.image_url}`
                          : "/assets/default-club.png"
                      }
                      sx={{width: 32, height: 32}}
                    />
                    {/* NOMBRE CLUB */}
                    <Typography>{visualOrigin?.name}</Typography>
                  </Stack>
                </TableCell>

                {/* FECHA */}
                <TableCell>{formatDate(t.date)}</TableCell>

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
                  <Stack direction="row" spacing={2} alignItems="center">
                    <Avatar
                      src={
                        visualDestiny?.image_url
                          ? `/assets/clubs/${visualDestiny.image_url}`
                          : "/assets/default-club.png"
                      }
                      sx={{width: 32, height: 32}}
                    />
                    <Typography>{visualDestiny?.name}</Typography>
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

export default PlayerTransfers;
