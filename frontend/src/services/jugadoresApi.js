const API_URL = "http://localhost:4000/api/jugadores";

export async function getPlayers() {
  const res = await fetch(`${API_URL}`);
  return res.json();
}