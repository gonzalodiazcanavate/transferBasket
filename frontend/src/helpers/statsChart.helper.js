/**
 * @file Archivo que contiene funciones para construir gráficas a partir de los datos de un jugador.
 */

import {calculatePercentage} from "../utils/math";

// Valores máximos que usaremos como referencia basados en los records de la acb.
const $FULL_MARKS = {Puntos: 20, Asistencias: 6, Rebotes: 12, Robos: 3, Faltas: 5}

export const createPayload = (player) => {
  const data = [];

  const puntos = {
    stat: "Puntos",
    value: calculatePercentage(Number(player.pp), $FULL_MARKS.Puntos),
    fullMark: 100,
  };
  data.push(puntos);

  const asistencias = {
    stat: "Asistencias",
    value: calculatePercentage(Number(player.ap), $FULL_MARKS.Asistencias),
    fullMark: 100,
  };
  data.push(asistencias);

  const rebotes = {
    stat: "Rebotes",
    value: calculatePercentage(Number(player.rp), $FULL_MARKS.Rebotes),
    fullMark: 100,
  };
  data.push(rebotes);

  const robos = {
    stat: "Robos",
    value: calculatePercentage(Number(player.sp), $FULL_MARKS.Robos),
    fullMark: 100,
  };
  data.push(robos);

  const faltas = {
    stat: "Faltas",
    value: calculatePercentage(Number(player.fp), $FULL_MARKS.Faltas),
    fullMark: 100,
  };
  data.push(faltas);

  return data;
}