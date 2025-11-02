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


// Cierra la sesión
export async function logout() {
  const res = await fetch(`${API_URL}/logout`, {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
    },
  });

  return res.json();
};
