/**
 * @file Enrutador de la página
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {BrowserRouter, Routes, Route} from "react-router-dom";
import Home from "./pages/Home";
import Login from "./pages/Login";
import Transfers from "./pages/Transfers";
import Clubs from "./pages/Clubs";
import PlayerDetails from "./pages/PlayerDetails";
import ClubDetails from "./pages/ClubDetails"

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/login" element={<Login />} />
        <Route path="/traspasos" element={<Transfers />} />
        <Route path="/equipos" element={<Clubs />} />
        <Route path="/equipo/:id" element={<ClubDetails />} />
        <Route path="/jugador/:id" element={<PlayerDetails />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
