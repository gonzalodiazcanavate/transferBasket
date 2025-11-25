import {useState, useEffect} from "react";
import {useMediaQuery, useTheme} from "@mui/material";

export const useHome = (totalSlides = 3) => {
  const [value, setValue] = useState(0);
  const [activeSlide, setActiveSlide] = useState(0);
  const [direction, setDirection] = useState("next");
  const [isHovered, setIsHovered] = useState(false);

  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down("sm"));

  // Tabs
  const handleChange = (event, newValue) => {
    setValue(newValue);
  };

  // Controles para cambiar de slides
  const goToNext = () => {
    setDirection("next");
    setActiveSlide((prev) => (prev + 1) % totalSlides);
  };

  const goToPrev = () => {
    setDirection("prev");
    setActiveSlide((prev) => (prev - 1 + totalSlides) % totalSlides);
  };

  // UseEffect que cambia el slide automaticamente cada 10 segundos si no se esta haciendo hover sobre el mismo
  useEffect(() => {
    let interval;
    if (!isHovered) {
      interval = setInterval(() => {
        setDirection("next");
        setActiveSlide((prev) => (prev + 1) % totalSlides);
      }, 10000);
    }
    return () => clearInterval(interval);
  }, [isHovered, totalSlides]);

  // Slides
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
  ]

  return {
    value,
    activeSlide,
    direction,
    isHovered,
    isMobile,
    slides,

    // Handlers
    handleChange,
    goToNext,
    goToPrev,
    setIsHovered,
  };
};
