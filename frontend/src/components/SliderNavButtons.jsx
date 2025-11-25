/**
 * @file Botones para manejar el carrusel/slider presente en HomeSlider.jsx
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {IconButton} from "@mui/material";
import ArrowBackIosIcon from "@mui/icons-material/ArrowBackIos";
import ArrowForwardIosIcon from "@mui/icons-material/ArrowForwardIos";

const SliderNavButtons = ({goToPrev, goToNext}) => (
  <>
    <IconButton
      onClick={goToPrev}
      sx={{
        position: "absolute",
        left: 16,
        top: "50%",
        transform: "translateY(-50%)",
        color: "white",
        backgroundColor: "rgba(0,0,0,0.3)",
        "&:hover": {backgroundColor: "rgba(0,0,0,0.5)"},
        zIndex: 3,
        display: {xs: "none", md: "flex"},
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
        "&:hover": {backgroundColor: "rgba(0,0,0,0.5)"},
        zIndex: 3,
        display: {xs: "none", md: "flex"},
      }}
    >
      <ArrowForwardIosIcon fontSize="small" />
    </IconButton>
  </>
);

export default SliderNavButtons;
