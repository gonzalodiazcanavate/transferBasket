/**
 * @file Controlador de traspasos.
 */
import { getAllTransfers } from "../repositories/transfers.repository.js";

// Devuelve un array con todos los traspasos/cesiones ordenados por valor
export const getTransfers = async (req, res) => {
  try {
    const transfers = await getAllTransfers();
    res.json(transfers);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error obteniendo traspasos" });
  }
};