import React from "react";
import { Link } from "react-router-dom";
import logo from "../assets/Transferbasket.jpeg";
import TablaJugadores from "../pages/TablaJugadores";
import {
  AppBar,
  Toolbar,
  Typography,
  Box,
  Button,
  TextField,
  Tabs,
  Tab,
  useMediaQuery,
  useTheme,
  IconButton,
} from "@mui/material";
import SearchIcon from "@mui/icons-material/Search";
import ArrowBackIosIcon from "@mui/icons-material/ArrowBackIos";
import ArrowForwardIosIcon from "@mui/icons-material/ArrowForwardIos";

const Home = () => {
  const [value, setValue] = React.useState(0);
  const [activeSlide, setActiveSlide] = React.useState(0);
  const [direction, setDirection] = React.useState("next"); // ← Nuevo
  const [isHovered, setIsHovered] = React.useState(false);
  const totalSlides = 3;

  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down("sm"));

  const handleChange = (event, newValue) => {
    setValue(newValue);
  };

  const goToNext = () => {
    setDirection("next");
    setActiveSlide((prev) => (prev + 1) % totalSlides);
  };

  const goToPrev = () => {
    setDirection("prev");
    setActiveSlide((prev) => (prev - 1 + totalSlides) % totalSlides);
  };

  React.useEffect(() => {
    let interval;
    if (!isHovered) {
      interval = setInterval(() => {
        setDirection("next");
        setActiveSlide((prev) => (prev + 1) % totalSlides);
      }, 10000);
    }
    return () => clearInterval(interval);
  }, [isHovered]);

  const slides = [
    {
      id: 0,
      title: "Jugadores",
      subtitle: "Valores de mercado, estadísticas y perfiles detallados.",
      buttonText: "Explorar Jugadores",
      link: "/jugadores",
      bgImage: "https://images.unsplash.com/photo-1546519638-68e109498ffc?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80",
    },
    {
      id: 1,
      title: "Equipos",
      subtitle: "Plantillas, valores totales y rendimiento por club.",
      buttonText: "Explorar Equipos",
      link: "/equipos",
      bgImage: "https://cdn0.uncomo.com/es/posts/4/1/2/basquet_manresa_54214_4_600.jpg",
    },
    {
      id: 2,
      title: "Transferencias",
      subtitle: "Historial de traspasos, valores y movimientos recientes.",
      buttonText: "Explorar Transferencias",
      link: "/transferencias",
      bgImage: "https://www.currentaffairs.org/hubfs/Imported_Blog_Media/stonks-1024x646-1.jpg",
    },
  ];

  return (
    <>
      <AppBar
        position="fixed"
        sx={{
          background: "linear-gradient(to bottom, #002b5b, #001f45)",
          color: "white",
          boxShadow: "0 2px 10px rgba(0, 0, 0, 0.25)",
          zIndex: 1000,
        }}
      >
        <Toolbar
          sx={{
            display: "flex",
            justifyContent: "space-between",
            alignItems: "center",
            flexWrap: "wrap",
            gap: 1.5,
            py: { xs: 0.5, sm: 1 },
          }}
        >
          <Box
            component={Link}
            to="/"
            sx={{
              display: "flex",
              alignItems: "center",
              textDecoration: "none",
              color: "white",
              gap: 1.5,
            }}
          >
            <img
              src={logo}
              alt="Logo TransferBasket"
              style={{
                width: 40,
                height: 40,
                borderRadius: "6px",
                objectFit: "cover",
                border: "1px solid rgba(255,255,255,0.2)",
              }}
            />
            <Typography
              variant="h6"
              sx={{
                fontWeight: 800,
                letterSpacing: 0.8,
                color: "white",
                fontFamily: "'Anton', sans-serif",
              }}
            >
              TransferBasket
            </Typography>
          </Box>

          <Box
            sx={{
              display: "flex",
              flexWrap: "wrap",
              gap: { xs: 1, md: 2.5 },
              justifyContent: "center",
            }}
          >
            <Button color="inherit" component={Link} to="/" sx={{ fontWeight: 500 }}>
              Inicio
            </Button>
            <Button color="inherit" component={Link} to="/jugadores" sx={{ fontWeight: 500 }}>
              Jugadores
            </Button>
            <Button color="inherit" component={Link} to="/equipos" sx={{ fontWeight: 500 }}>
              Equipos
            </Button>
            <Button color="inherit" component={Link} to="/transferencias" sx={{ fontWeight: 500 }}>
              Transferencias
            </Button>
          </Box>

          <Box
            sx={{
              display: "flex",
              alignItems: "center",
              gap: { xs: 1, sm: 2 },
              flexWrap: "wrap",
            }}
          >
            <TextField
              size="small"
              variant="outlined"
              placeholder="Buscar jugador o equipo..."
              InputProps={{
                endAdornment: <SearchIcon fontSize="small" sx={{ color: "text.secondary" }} />,
              }}
              sx={{
                backgroundColor: "rgba(255,255,255,0.95)",
                borderRadius: 1,
                width: { xs: 140, sm: 180 },
                "& .MuiInputBase-input": {
                  py: 0.75,
                  fontSize: "0.875rem",
                },
              }}
            />
            <Button
              variant="outlined"
              sx={{
                borderColor: "rgba(255,255,255,0.7)",
                color: "white",
                fontWeight: 600,
                "&:hover": {
                  backgroundColor: "rgba(255,255,255,0.1)",
                  borderColor: "white",
                },
              }}
              component={Link}
              to="/login"
            >
              Iniciar sesión
            </Button>
          </Box>
        </Toolbar>
      </AppBar>

      <main className="bg-[#f8fbff] min-h-screen" style={{ marginTop: "64px" }}>
        {/* Hero Carousel con deslizamiento direccional */}
        <Box
          sx={{
            minHeight: { xs: "50vh", md: "60vh" },
            position: "relative",
            overflow: "hidden",
          }}
          onMouseEnter={() => setIsHovered(true)}
          onMouseLeave={() => setIsHovered(false)}
        >
          {slides.map((slide, index) => {
            let translateX = "0%";

            if (index === activeSlide) {
              translateX = "0%";
            } else if (
              (direction === "next" && index === (activeSlide - 1 + totalSlides) % totalSlides) ||
              (direction === "prev" && index === (activeSlide + 1) % totalSlides)
            ) {
              // Slide que está saliendo
              translateX = direction === "next" ? "-100%" : "100%";
            } else {
              // Slide que está entrando (fuera de pantalla)
              translateX = direction === "next" ? "100%" : "-100%";
            }

            return (
              <Box
                key={slide.id}
                sx={{
                  position: "absolute",
                  top: 0,
                  left: 0,
                  width: "100%",
                  height: "100%",
                  display: "flex",
                  flexDirection: "column",
                  justifyContent: "center",
                  alignItems: "center",
                  background: `linear-gradient(rgba(0,20,40,0.75), rgba(0,20,40,0.85)), url('${slide.bgImage}')`,
                  backgroundSize: "cover",
                  backgroundPosition: "center",
                  px: 2,
                  color: "white",
                  transform: `translateX(${translateX})`,
                  transition: "transform 0.6s cubic-bezier(0.33, 1, 0.68, 1)",
                  zIndex: index === activeSlide ? 2 : 1,
                }}
              >
                <Box sx={{ maxWidth: 800, px: 2, textAlign: "center" }}>
                  <Typography
                    variant={isMobile ? "h4" : "h2"}
                    component="h1"
                    sx={{
                      fontFamily: "'Anton', sans-serif",
                      textTransform: "uppercase",
                      letterSpacing: "2px",
                      mb: 2,
                      lineHeight: 1.2,
                    }}
                  >
                    Bienvenido a TransferBasket
                  </Typography>

                  <Typography
                    variant="h5"
                    sx={{
                      mb: 2,
                      fontWeight: 600,
                      color: "#ffffff",
                      textTransform: "uppercase",
                      fontSize: isMobile ? "1.2rem" : "1.5rem",
                    }}
                  >
                    {slide.title}
                  </Typography>

                  <Typography
                    variant="h6"
                    sx={{
                      mb: 3,
                      color: "#e0e7ff",
                      fontWeight: 300,
                      fontSize: isMobile ? "1rem" : "1.25rem",
                      lineHeight: 1.5,
                    }}
                  >
                    {slide.subtitle}
                  </Typography>

                  <Button
                    variant="contained"
                    component={Link}
                    to={slide.link}
                    sx={{
                      fontWeight: 600,
                      px: 3,
                      py: 1,
                      textTransform: "none",
                      fontSize: "1rem",
                      backgroundColor: "#9abfea",
                      color: "#001f45",
                      "&:hover": {
                        backgroundColor: "#7da5e0",
                      },
                    }}
                  >
                    {slide.buttonText}
                  </Button>
                </Box>
              </Box>
            );
          })}

          <IconButton
            onClick={goToPrev}
            sx={{
              position: "absolute",
              left: 16,
              top: "50%",
              transform: "translateY(-50%)",
              color: "white",
              backgroundColor: "rgba(0,0,0,0.3)",
              "&:hover": { backgroundColor: "rgba(0,0,0,0.5)" },
              zIndex: 3,
              display: { xs: "none", md: "flex" },
            }}
          >
            <ArrowBackIosIcon fontSize="small" />
          </IconButton>

          <IconButton
            onClick={goToNext}
            sx={{
              position: "absolute",
              right: 16,
              top: "50%",
              transform: "translateY(-50%)",
              color: "white",
              backgroundColor: "rgba(0,0,0,0.3)",
              "&:hover": { backgroundColor: "rgba(0,0,0,0.5)" },
              zIndex: 3,
              display: { xs: "none", md: "flex" },
            }}
          >
            <ArrowForwardIosIcon fontSize="small" />
          </IconButton>
        </Box>

        {/* Tabs Section */}
        <Box sx={{ width: "100%", bgcolor: "background.paper", mt: 4 }}>
          <Tabs
            value={value}
            onChange={handleChange}
            centered
            textColor="primary"
            indicatorColor="primary"
            variant={isMobile ? "fullWidth" : "standard"}
            sx={{
              borderBottom: 1,
              borderColor: "divider",
              px: 2,
              "& .MuiTab-root": {
                fontWeight: 600,
                textTransform: "none",
                fontSize: "1rem",
              },
            }}
          >
            <Tab label="Jugadores" />
            <Tab label="Equipos" />
            <Tab label="Transferencias" />
          </Tabs>

          <Box sx={{ p: { xs: 2, md: 4 } }}>
            {value === 0 && <TablaJugadores />}
            {value === 1 && (
              <Typography variant="h6" color="text.secondary">
                🧢 Próximamente: listado detallado de equipos, plantillas y valores.
              </Typography>
            )}
            {value === 2 && (
              <Typography variant="h6" color="text.secondary">
                🔄 Próximamente: historial de transferencias con fechas, valores y clubes involucrados.
              </Typography>
            )}
          </Box>
        </Box>

        {/* Footer */}
        <Box
          sx={{
            backgroundColor: "#001f45",
            color: "rgba(255,255,255,0.7)",
            textAlign: "center",
            py: 4,
            mt: 6,
          }}
        >
          <Typography variant="body2">
            © {new Date().getFullYear()} TransferBasket | Desarrollado por Gonzalo y Rafa 🏀
          </Typography>
          <Typography variant="caption" sx={{ mt: 1, display: "block" }}>
          </Typography>
        </Box>
      </main>
    </>
  );
};

export default Home;