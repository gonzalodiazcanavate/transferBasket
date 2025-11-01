import {config} from "../config/apiConfig"

const API_URL = `${config.apiUrl}/clubs`;

// Función para obtener lista global de clubs.
export async function getClubs() {
  const res = await fetch(API_URL);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}

// Función para obtener un club.
export async function getClub(id) {
  const res = await fetch(`${API_URL}/${id}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}

// Función para todos los clubes de una liga.
export async function getClubsByLeague(id) {
  const res = await fetch(`${API_URL}/liga/${id}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}

// Función para obtener el valor de los jugadores de un club.
export async function getClubValue(id) {
  const res = await fetch(`${API_URL}/valor/${id}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}
