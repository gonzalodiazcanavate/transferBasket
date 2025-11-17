import React from "react";
import {BrowserRouter, Routes, Route} from "react-router-dom";
import Home from "./pages/Home";
import Transferencias from "./pages/Transferencias";
import Equipos from "./pages/Equipos";
import Login from "./pages/Login";
import PlayerDetails from "./pages/PlayerDetails";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/login" element={<Login />} />
        <Route path="/transferencias" element={<Transferencias />} />
        <Route path="/equipos" element={<Equipos />} />
        <Route path="/jugador/:id" element={<PlayerDetails />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
