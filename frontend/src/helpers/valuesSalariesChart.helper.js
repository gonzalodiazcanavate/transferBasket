/**
 * @file Archivo que contiene funciones para construir gráficas a partir de los valores o salarios de un jugador.
 */
import {formatDate} from "../utils/format";
/**
 * 
 * @param {Array<Object>} base Historial de salarios o valores de un jugador.
 * @returns {Array<Object>} Datos listos para ser representados por nuestra gráfica.
 */
export const createPayload = (base) => {
  const data = [];
  base.forEach(e => {
    const entry = {
      date: formatDate(e.date),
      value: e.value ?? e.salary,
    };
    data.push(entry); 
  });

  return data;
}