/**
 * @file Archivo que contiene funciones matemáticas.
 */

/**
 * @description Util para el calculo de porcentajes.
 * @param {number} value Valor a convertir en porcentaje.
 * @param {number} reference Valor de referencia que representa el 100%.
 * @param {boolean} round Booleano que determina si redondeamos o no al número entero más cercano, true por defecto.
 * @param {boolean} limit Booleano que determina si limitamos porcentajes mayores que 100, true por defecto.
 * @returns El porcentaje que value representa de reference.
 */
export const calculatePercentage = (value, reference, round = true, limit=true) => {
  const percentage = round ? Math.round((value/reference) * 100) : (value/reference) * 100;
  if (limit) {
    return percentage > 100 ? 100 : percentage;
  }
  return percentage;
}