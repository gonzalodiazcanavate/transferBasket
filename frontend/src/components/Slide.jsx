/**
 * @file Imagen/Slide presente en el carrusel HomeSlider.jsx
 */

// eslint-disable-next-line no-unused-vars
import React from "react";
import {Box, Typography, Button} from "@mui/material";
import {Link} from "react-router-dom";

const Slide = ({slide, isActive, translateX, isMobile}) => {
  return (
    <Box
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
        zIndex: isActive ? 2 : 1,
      }}
    >
      <Box sx={{maxWidth: 800, px: 2, textAlign: "center"}}>
        <Typography
          variant={isMobile ? "h4" : "h2"}
          sx={{
            fontFamily: "'Anton', sans-serif",
            textTransform: "uppercase",
            mb: 2,
          }}
        >
          Bienvenido a TransferBasket
        </Typography>

        <Typography variant="h5" sx={{mb: 2, fontWeight: 600}}>
          {slide.title}
        </Typography>

        <Typography variant="h6" sx={{mb: 3, fontWeight: 300}}>
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
          }}
        >
          {slide.buttonText}
        </Button>
      </Box>
    </Box>
  );
};

export default Slide;
