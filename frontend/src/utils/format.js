/**
 * @file Archivo de utilidad que contiene funciones de formateo de datos
 */

/**
 * 
 * @param {Date} isoString Fecha en formato ISO (el que usamos en la base de datos)
 * @returns Fecha formateada a Year-Month-Day
 */
export const formatDate = (dateStr) => new Date(dateStr).toLocaleDateString("es-ES");

/**
 * 
 * @param {Array<Object>} nationalities Array de nacionalidades
 * @returns {String} Devuelve las nacionalidades del jugador unidas por un /
 */
export const formatNationalities = (nationalities) => {
  if (!nationalities || nationalities.length === 0) return "";

  return nationalities.join("/");
}

/**
 * 
 * @param {Number} value Valor de un jugador o traspaso
 * @returns {String} Devuelve "-" si el valor es 0 o el valor con el símbolo del euro en caso contrario.
 */
export const formatValue = (value) => value === 0 ? "—" : value.toLocaleString("es-ES") + " €";
