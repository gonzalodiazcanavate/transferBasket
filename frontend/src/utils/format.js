/**
 * @file Archivo de utilidad que contiene funciones de formateo de datos
 */

/**
 * 
 * @param {Date} isoString Fecha en formato ISO (el que usamos en la base de datos)
 * @returns Fecha formateada a Year-Month-Day
 */
export const formatDate = (isoString) => isoString.split("T")[0];
