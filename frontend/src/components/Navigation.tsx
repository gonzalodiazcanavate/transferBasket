import React, { useState } from "react";
import { Link, useLocation } from "react-router-dom";
import {
  FaHome,
  FaUsers,
  FaFutbol,
  FaExchangeAlt,
  FaSignInAlt,
  FaBars,
  FaSearch,
} from "react-icons/fa";

const Navigation: React.FC = () => {
  const [open, setOpen] = useState(false);
  const [search, setSearch] = useState("");
  const location = useLocation();

  const menuItems = [
    { text: "Inicio", icon: <FaHome />, path: "/" },
    { text: "Jugadores", icon: <FaUsers />, path: "/jugadores" },
    { text: "Equipos", icon: <FaFutbol />, path: "/equipos" },
    { text: "Transferencias", icon: <FaExchangeAlt />, path: "/transferencias" },
  ];

  const toggleMenu = () => setOpen(!open);

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault();
    console.log("🔍 Buscando:", search);
  };

  return (
    <>
      {/* 🔵 Navbar superior */}
      <nav className="fixed top-0 left-0 w-full bg-blue-600 text-white shadow-md z-50">
        <div className="relative flex items-center justify-between px-4 py-3 md:px-8">
          {/* 🏀 Nombre del sitio (izquierda) */}
          <h1 className="text-lg font-bold whitespace-nowrap">TransferBasket</h1>

          {/* 🔍 Barra de búsqueda (centrada absolutamente) */}
          <form
            onSubmit={handleSearch}
            className="hidden md:flex items-center bg-white rounded-full px-3 py-1 w-80 text-gray-700 shadow-sm absolute left-1/2 -translate-x-1/2"
          >
            <FaSearch className="text-gray-400 mr-2" />
            <input
              type="text"
              placeholder="Buscar jugador, equipo..."
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              className="w-full outline-none text-sm bg-transparent"
            />
          </form>

          {/* 🔐 Botón Login (derecha) */}
          <div className="flex items-center gap-3">
            <Link
              to="/login"
              className="hidden md:flex items-center gap-2 bg-white text-blue-600 font-semibold px-4 py-1.5 rounded-full hover:bg-blue-100 transition-colors"
            >
              <FaSignInAlt />
              <span>Login</span>
            </Link>

            {/* 🍔 Botón menú móvil */}
            <button
              className="md:hidden text-white text-2xl focus:outline-none"
              onClick={toggleMenu}
            >
              <FaBars />
            </button>
          </div>
        </div>
      </nav>

      {/* 📋 Sidebar lateral */}
      <aside
        className={`fixed top-0 left-0 h-full w-64 bg-white border-r border-gray-200 shadow-lg transform transition-transform duration-300 ease-in-out
          ${open ? "translate-x-0" : "-translate-x-full"}
          md:translate-x-0 md:static md:block`}
      >
        <div className="h-16 flex items-center px-6 border-b border-gray-200">
          <h2 className="text-xl font-semibold text-gray-700">Menú</h2>
        </div>
        <nav className="mt-4">
          <ul>
            {menuItems.map((item) => {
              const active = location.pathname === item.path;
              return (
                <li key={item.text}>
                  <Link
                    to={item.path}
                    className={`flex items-center gap-3 px-6 py-3 transition-colors duration-200 
                      ${
                        active
                          ? "bg-blue-100 text-blue-600 font-semibold"
                          : "text-gray-700 hover:bg-blue-50 hover:text-blue-600"
                      }`}
                    onClick={() => setOpen(false)}
                  >
                    <span className="text-lg">{item.icon}</span>
                    <span>{item.text}</span>
                  </Link>
                </li>
              );
            })}
          </ul>
        </nav>
      </aside>

      {/* 🧱 Espaciador para el contenido principal */}
      <div className="pt-16 md:ml-64" />
    </>
  );
};

export default Navigation;
