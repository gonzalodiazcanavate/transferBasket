/**
 * @file Hook personalizado que contiene la lógica de la barra de búsqueda.
 */
import {useEffect, useState} from "react";
import {searchPlayerOrClub} from "../services/searchApi";

export function useSearch() {
  const [query, setQuery] = useState("");
  const [results, setResults] = useState({players: [], clubs: []});
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  // Cooldown de busquedas
  useEffect(() => {
    // Mínimo tres caractere para lanzar búsqueda
    if (!query || query.length < 3) {
      setResults({players: [], clubs: []});
      return;
    }

    const timeout = setTimeout(async () => {
      try {
        setLoading(true);
        const data = await searchPlayerOrClub(query);
        setResults(data);
        setError(null);
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    }, 500); // Espera de 300 ms antes de cada query

    return () => clearTimeout(timeout);

  }, [query]);

  const onChangeQuery = (value) => setQuery(value);

  return {
    query,
    results,
    loading,
    error,
    onChangeQuery
  };
}