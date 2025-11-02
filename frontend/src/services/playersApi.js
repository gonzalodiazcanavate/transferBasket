import {config} from "../config/apiConfig"

const API_URL = `${config.apiUrl}/jugadores`;

// Función para obtener lista global de jugadores.
export async function getPlayers() {
  console.log(API_URL);
  const res = await fetch(API_URL);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}

// Función para obtener un jugador.
export async function getPlayersByClub(id) {
  const res = await fetch(`${API_URL}/club/${id}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}

// Función para obtener un jugador.
export async function getPlayer(id) {
  const res = await fetch(`${API_URL}/${id}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}

// Función para obtener los valores de un jugador.
export async function getPlayerValues(id) {
  const res = await fetch(`${API_URL}/valores/${id}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}

// Función para obtener el valor actual de un jugador.
export async function getPlayerValue(id) {
  const res = await fetch(`${API_URL}/valor/${id}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}