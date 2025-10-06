import React, { useEffect, useState } from "react";
import { getPlayers } from "../services/jugadoresApi.js";

const Home = () => {

  const [players, setPlayers] = useState([]); // estado inicial vacío
  const tableHeaders = ["ID", "Nombre", "Posición", "Puntos"];
  useEffect(() => {
    const fetchData = async () => {
      try {
        const data = await getPlayers();
        setPlayers(data); // guardamos en estado
      } catch (error) {
        console.error("Error fetching players:", error);
      }
    };

    fetchData();
  }, []);
    return (
        <div className="p-8 bg-gray-50 min-h-screen min-w-full">
            <h1 className="text-3xl font-bold mb-6 text-center text-gray-800">Estadísticas de Jugadores (Tabla Dinámica)</h1>
            <div className="overflow-x-auto shadow-xl rounded-xl">
                <table className="min-w-full bg-white border border-gray-200">
                    <thead>
                        <tr className="bg-indigo-600 text-white uppercase text-sm leading-normal">
                            {tableHeaders.map(header => (
                                <th key={header} className="py-3 px-6 text-left">{header}</th>
                            ))}
                        </tr>
                    </thead>
                    <tbody className="text-gray-700 text-sm font-light">
                        {players ? (
                            players.map(player => (
                            <tr
                                key={player.id} 
                                className="border-b border-gray-200 hover:bg-indigo-100/50 transition duration-150 ease-in-out"
                            >
                                <td className="py-3 px-6 text-left whitespace-nowrap font-medium">{player.id}</td>
                                <td className="py-3 px-6 text-left">{player.name}</td>
                                <td className="py-3 px-6 text-left">{player.position}</td>
                                <td className="py-3 px-6 text-left">{player.pp}</td>
                            </tr> 
                            ))) : (null)
                        }
                    </tbody>
                </table>
            </div>
        </div>
    );
}

export default Home;