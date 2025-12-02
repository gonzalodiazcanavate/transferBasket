import {config} from "../config/apiConfig"

const API_URL = `${config.apiUrl}/users`;

// Login
export async function loginUser(username, password) {
  const res = await fetch(`${API_URL}/login`, {
    method: "POST",
    headers: {"Content-Type": "application/json",},
    credentials: "include",
    body: JSON.stringify({username, password}),
  });

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error.error || "Error al iniciar sesión");
  }
  const data = await res.json();

  return data;
}

// Registro
export async function register(username, email, password) {
  const res = await fetch(`${API_URL}/register`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({username, email, password}),
  });

  return res.json();
}

// Obtener usuario autenticado
export async function getCurrentUser() {
  const res = await fetch(`${API_URL}/me`, {
    method: "GET",
    credentials: "include",
  });

  // Si no está autenticado
  if (!res.ok) return null;

  const data = await res.json();
  if (data.auth === false) return null;

  return data.user;
}

// Cierra la sesión
export async function logout() {
  const res = await fetch(`${API_URL}/logout`, {
    method: "GET",
    credentials: "include",
    headers: {
      "Content-Type": "application/json"
    },
  });

  return res.json();
};
