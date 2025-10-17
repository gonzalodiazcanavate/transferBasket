import React from 'react';
import { BrowserRouter, Routes, Route } from "react-router-dom";
import { ThemeProvider, createTheme, CssBaseline } from '@mui/material';
import Home from "./pages/Home";
import Transferencias from "./pages/Transferencias";
import Equipos from "./pages/Equipos";

// Crear el tema
const theme = createTheme({
  palette: {
    primary: {
      main: '#03a9f4', // Azul celeste
      light: '#67daff',
      dark: '#007ac1',
    },
    secondary: {
      main: '#81d4fa',
      light: '#b6ffff',
      dark: '#4ba3c7',
    },
    background: {
      default: '#f5f5f5',
      paper: '#ffffff',
    },
  },
});

function App() {
  return (
    <ThemeProvider theme={theme}>
      <CssBaseline />
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/transferencias" element={<Transferencias />} />
          <Route path="/equipos" element={<Equipos />} />
        </Routes>
      </BrowserRouter>
    </ThemeProvider>
  );
}

export default App;
