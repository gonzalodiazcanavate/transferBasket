/**
 * @file Barra de búsqueda del Header
 */
// eslint-disable-next-line no-unused-vars
import React, {useState} from "react";
import {TextField, Box, CircularProgress} from "@mui/material";
import SearchIcon from "@mui/icons-material/Search";
import {useSearch} from "../hooks/useSearch.js";
import SearchResults from "./SearchResults";

const SearchBar = () => {
  const {query, results, loading, onChangeQuery} = useSearch();
  const [focused, setFocused] = useState(false);

  return (
    <Box sx={{position: "relative", width: {xs: 140, sm: 200}}}>
      <TextField
        size="small"
        variant="outlined"
        placeholder="Buscar jugador o equipo..."
        value={query}
        onChange={(e) => onChangeQuery(e.target.value)}
        onFocus={() => setFocused(true)}
        onBlur={() => setTimeout(() => setFocused(false), 150)}
        InputProps={{
          endAdornment: loading
            ? <CircularProgress size={16} />
            : <SearchIcon fontSize="small" sx={{color: "text.secondary"}} />
        }}
        sx={{
          backgroundColor: "rgba(255,255,255,0.95)",
          borderRadius: 1,
          width: "100%",
          "& .MuiInputBase-input": {
            py: 0.75,
            fontSize: "0.875rem",
          },
        }}
      />

      {(query.length >= 2 && focused) && (
        <SearchResults
          results={results}
          onClose={() => setFocused(false)}
        />
      )}
    </Box>
  );
};

export default SearchBar;
