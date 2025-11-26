import {config} from "../config/apiConfig"

const API_URL = `${config.apiUrl}/traspasos`;

// Función para obtener lista global de traspasos/cesiones.
export async function getTransfers() {
  console.log(API_URL);
  const res = await fetch(API_URL);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}