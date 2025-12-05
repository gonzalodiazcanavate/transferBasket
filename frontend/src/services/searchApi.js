import {config} from "../config/apiConfig"

const API_URL = `${config.apiUrl}/search`;

// Función para obtener lista por parámetro de jugadores y clubes.
export async function searchPlayerOrClub(query) {
  console.log(API_URL);
  const res = await fetch(`${API_URL}?q=${encodeURIComponent(query)}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json(); 
}