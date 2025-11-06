import React from "react";
import { Link } from "react-router-dom";
import {
  AppBar,
  Toolbar,
  Typography,
  Box,
  Button,
  TextField,
  Tabs,
  Tab,
}
 from "@mui/material";

/**
 * 🏀 Componente de navegación y página principal con un Hero grande y estilizado.
 */
const Navigation = () => {
  // Estado para controlar la pestaña activa (0: Jugadores, 1: Equipos, 2: Transferencias)
  const [value, setValue] = React.useState(0);

  // Manejador para cambiar de pestaña
  const handleChange = (event, newValue) => {
    setValue(newValue);
  };

  return (
    <>
      {/* 🧭 BARRA DE NAVEGACIÓN */}
      <AppBar
        position="fixed"
        sx={{
          backgroundColor: "#002b5b",
          color: "white",
          boxShadow: "0 2px 6px rgba(0,0,0,0.2)",
          zIndex: 1000,
        }}
      >
        <Toolbar
          sx={{
            display: "flex",
            justifyContent: "space-between",
            alignItems: "center",
          }}
        >
          {/* Logo */}
          <Typography
            variant="h6"
            component={Link}
            to="/"
            sx={{
              textDecoration: "none",
              color: "white",
              fontWeight: 700,
              letterSpacing: 0.5,
            }}
          >
            TransferBasket
          </Typography>

          {/* Menú principal en la barra */}
          <Box sx={{ display: "flex", gap: 3 }}>
            <Button color="inherit" component={Link} to="/">
              Inicio
            </Button>
            <Button color="inherit" component={Link} to="/jugadores">
              Jugadores
            </Button>
            <Button color="inherit" component={Link} to="/equipos">
              Equipos
            </Button>
            <Button color="inherit" component={Link} to="/transferencias">
              Transferencias
            </Button>
          </Box>

          {/* Barra de búsqueda + Login */}
          <Box sx={{ display: "flex", alignItems: "center", gap: 2 }}>
            <TextField
              size="small"
              variant="outlined"
              placeholder="Buscar..."
              sx={{
                backgroundColor: "white",
                borderRadius: 1,
                width: 180,
                input: { color: "black" },
              }}
            />
            <Button
              variant="contained"
              color="secondary"
              component={Link}
              to="/login"
              sx={{
                fontWeight: 600,
                color: "#002b5b",
                backgroundColor: "white",
                "&:hover": { backgroundColor: "#dbe9ff" },
              }}
            >
              Login
            </Button>
          </Box>
        </Toolbar>
      </AppBar>
      {/* FIN DEL APPBAR */}

      {/* 🏀 CONTENIDO PRINCIPAL */}
      <main className="bg-[#f0f6ff] min-h-screen" style={{ marginTop: "64px" }}>
        
        {/* 🎯 HERO SECTION (MÁS GRANDE) */}
        <Box
          // Ajuste clave: Aumentamos el padding vertical (py-28)
          className="flex flex-col items-center justify-center text-center py-28 px-4" 
          sx={{
            // Ajuste clave: Altura mínima para asegurar visibilidad (50% del viewport height en escritorio)
            minHeight: { xs: '40vh', md: '50vh' }, 
            backgroundImage:
              "url('https://forbes.es/wp-content/uploads/2023/10/MejoresJugadores_NBA_Aper.jpg')",
            backgroundSize: "cover",
            backgroundPosition: "center",
            color: "white",
            position: "relative",
          }}
        >
          {/* Capa de superposición */}
          <Box
            sx={{
              position: "absolute",
              top: 0,
              left: 0,
              width: "100%",
              height: "100%",
              backgroundColor: "rgba(0,0,0,0.5)",
              zIndex: 1,
            }}
          />
          <Box sx={{ position: "relative", zIndex: 2 }}>

            {/* TÍTULO CON FUENTE DE IMPACTO Y CONTORNO */}
            <Typography
              variant="h3"
              component="h1"
              sx={{
                fontFamily: "'Anton', sans-serif", 
                textTransform: "uppercase", 
                letterSpacing: "1.5px",
                color: "white",
                WebkitTextStroke: "1px #001a36", // Contorno azul oscuro
                textShadow: "3px 3px 0px rgba(0,26,54,0.4)", // Sombra 3D
              }}
            >
              Bienvenido a TransferBasket
            </Typography>

            {/* SUBTÍTULO */}
            <Typography
              variant="h6"
              sx={{
                mt: 2,
                maxWidth: 600,
                mx: "auto",
                color: "#f0f0f0",
                textShadow: "0 2px 4px rgba(0,0,0,0.8)",
                fontWeight: 400,
              }}
            >
              Tu portal de referencia para conocer jugadores, equipos y
              transferencias del mundo del baloncesto.
            </Typography>
          </Box>
        </Box>
        {/* FIN DEL HERO */}


        {/* 🚀 SECCIÓN DE PESTAÑAS (TABS) */}
        <Box sx={{ width: "100%", bgcolor: "background.paper" }}>
          <Tabs
            value={value}
            onChange={handleChange}
            centered
            textColor="primary"
            indicatorColor="primary"
          >
            <Tab label="Jugadores" />
            <Tab label="Equipos" />
            <Tab label="Transferencias" />
          </Tabs>

          {/* Contenido dinámico según la pestaña seleccionada */}
          <Box sx={{ p: 4, textAlign: "center" }}>
            {value === 0 && (
              <Typography variant="h6">
                🏀 Aquí se mostrará el contenido de Jugadores.
              </Typography>
            )}
            {value === 1 && (
              <Typography variant="h6">
                🧢 Aquí se mostrará el contenido de Equipos.
              </Typography>
            )}
            {value === 2 && (
              <Typography variant="h6">
                🔄 Aquí se mostrará el contenido de Transferencias.
              </Typography>
            )}
          </Box>
        </Box>
        {/* FIN DE PESTAÑAS */}


        {/* ⚙️ Footer */}
        <Box className="bg-[#002b5b] text-white text-center py-16">
          <Typography variant="body2">
            © {new Date().getFullYear()} TransferBasket | Desarrollado por Gonzalo y Rafa 🏀
          </Typography>
        </Box>
      </main>
    </>
  );
};

export default Navigation;