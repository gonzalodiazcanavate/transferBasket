import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import Transferencias from "./pages/Transferencias";
import Equipos from "./pages/Equipos";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/transferencias" element={<Transferencias />} />
        <Route path="/equipos" element={<Equipos />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
