/**
 * @file Archivo de utilidad que contiene funciones de formateo de datos
 */

/**
 * 
 * @param {Date} isoString Fecha en formato ISO (el que usamos en la base de datos)
 * @returns Fecha formateada a Year-Month-Day
 */
export const formatDate = (isoString) => isoString.split("T")[0];

/**
 * 
 * @param {Array<Object>} nationalities Array de player_nationalities que contiene en su interior los datos del país de dicha nacionalidad
 * @returns {String} Devuelve el nombre de la nacionalidad del jugador.
 */
export const formatNationalities = (nationalities) => {
  if (!nationalities || nationalities.length === 0) return "";

  return nationalities.join("/");
}
