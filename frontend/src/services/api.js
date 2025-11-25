const API_URL = "http://localhost:4000/api";

export async function getPlayers() {
  const res = await fetch(`${API_URL}/jugadores`);
  return res.json();
}