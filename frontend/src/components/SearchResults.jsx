/**
 * @file Componente que muestra los resultados de una búsqueda
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {Link} from "react-router-dom";
import {Box, Typography} from "@mui/material";
import {config} from "../config/apiConfig.js";

const BACKEND = config.assetsUrl;

const SearchResults = ({results, onClose}) => {
  const players = results.players.slice(0, 5);
  const clubs = results.clubs.slice(0, 5);

  const empty = players.length === 0 && clubs.length === 0;

  return (
    <Box
      sx={{
        position: "absolute",
        top: "100%",
        left: 0,
        mt: 1,
        width: "100%",
        backgroundColor: "white",
        borderRadius: 1,
        boxShadow: 3,
        zIndex: 30,
        maxHeight: 300,
        overflowY: "auto",
        p: 1
      }}
    >
      {empty && (
        <Typography sx={{p: 1, color: "text.secondary"}}>
          No hay resultados
        </Typography>
      )}

      {/* ----------- JUGADORES ----------- */}
      {players.length > 0 && (
        <>
          <Typography variant="subtitle2" sx={{px: 1, color: "text.secondary"}}>
            Jugadores
          </Typography>

          {players.map(p => (
            <Link
              key={p.id}
              to={`/jugador/${p.id}`}
              onClick={onClose}
              style={{textDecoration: "none", color: "inherit"}}
            >
              <Box
                sx={{
                  p: 1,
                  display: "flex",
                  alignItems: "center",
                  cursor: "pointer",
                  borderRadius: 1,
                  "&:hover": {backgroundColor: "#f5f5f5"}
                }}
              >
                <img
                  src={p.image_url ? `${BACKEND}/players/${p.image_url}` : `${BACKEND}/default.png`}
                  alt={p.name}
                  style={{
                    width: 32,
                    height: 32,
                    borderRadius: "50%",
                    marginRight: 8
                  }}
                />
                <Typography sx={{color: "black"}}>{p.name} {p.second_name}</Typography>
              </Box>
            </Link>
          ))}
        </>
      )}

      {/* ----------- CLUBES ----------- */}
      {clubs.length > 0 && (
        <>
          <Typography
            variant="subtitle2"
            sx={{px: 1, color: "text.secondary", mt: 1}}
          >
            Clubes
          </Typography>

          {clubs.map(c => (
            <Link
              key={c.id}
              to={`/equipo/${c.id}`}
              onClick={onClose}
              style={{textDecoration: "none", color: "inherit"}}
            >
              <Box
                sx={{
                  p: 1,
                  display: "flex",
                  alignItems: "center",
                  cursor: "pointer",
                  borderRadius: 1,
                  "&:hover": {backgroundColor: "#f5f5f5"}
                }}
              >
                
                <img
                  src={c.image_url ? `${BACKEND}/clubs/${c.image_url}` : `${BACKEND}/default.png`}
                  alt={c.name}
                  style={{
                    width: 28,
                    height: 28,
                    marginRight: 8
                  }}
                />
                <Typography sx={{color: "black"}}>{c.name}</Typography>
              </Box>
            </Link>
          ))}
        </>
      )}
    </Box>
  );
};

export default SearchResults;
