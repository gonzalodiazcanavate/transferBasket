const API_URL = "http://localhost:4000/api/jugadores";

// Función para obtener lista global de jugadores (Protegida con jwt por ahora).
export async function getPlayers() {
  const res = await fetch(API_URL, {
    credentials: "include",
  });

  if (!res.ok) {
    const error = await res.json();
    throw new Error(error);
  } 

  return res.json();
}