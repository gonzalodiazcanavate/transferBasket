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

// Función para obtener todos los jugadores de un club.
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

// Función para obtener el salario actual de un jugador.
export async function getPlayerSalary(id) {
  const res = await fetch(`${API_URL}/salario/${id}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}

// Función para obtener el historial de traspasos de un jugador.
export async function getPlayerTransfers(id) {
  const res = await fetch(`${API_URL}/traspasos/${id}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}

// Función para obtener los salarios de un jugador.
export async function getPlayerSalaries(id) {
  const res = await fetch(`${API_URL}/salarios/${id}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}

// Función para obtener un jugador con datos extra relativos a su club y  su valor y salario actuales.
export async function getFullPlayer(id) {
  const res = await fetch(`${API_URL}/completo/${id}`);

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}