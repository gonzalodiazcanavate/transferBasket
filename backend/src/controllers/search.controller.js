/**
 * @file Controlador de jugadores.
 */
import { searchByText } from "../repositories/search.repository.js";

// Recibe una cadena de texto que usará para traer a los jugadores y clubes que coincidan con la misma
export const searchPlayerOrClub = async (req, res) => {
  const { q } = req.query;

  if (!q || q.trim() === "") {
    return res.status(400).json({ error: "El criterio de búsqueda no puede estar vacío" });
  }

  try {
    const results = await searchByText(q);
    res.json(results);
  } catch (err) {
    console.error("Error en la búsqueda:", err);
    res.status(500).json({ error: "Error en el servidor" });
  }
};