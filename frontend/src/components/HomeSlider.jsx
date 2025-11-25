/**
 * @file Carrusel de imagenes/slides presente en el componente Home
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {Box} from "@mui/material";
import {useHome} from "../hooks/useHome";
import Slide from "./Slide";
import SliderNavButtons from "./SliderNavButtons";

const HomeSlider = () => {
  const totalSlides = 3;

  const {
    slides,
    activeSlide,
    direction,
    isMobile,
    setIsHovered,
    goToPrev,
    goToNext,
  } = useHome(totalSlides);

  return (
    <Box
      sx={{
        minHeight: {xs: "50vh", md: "60vh"},
        position: "relative",
        overflow: "hidden",
      }}
      onMouseEnter={() => setIsHovered(true)}
      onMouseLeave={() => setIsHovered(false)}
    >
      {slides.map((slide, index) => {
        const isActive = index === activeSlide;

        let translateX = "0%";

        if (isActive) {
          translateX = "0%";
        } else if (
          (direction === "next" && index === (activeSlide - 1 + totalSlides) % totalSlides) ||
          (direction === "prev" && index === (activeSlide + 1) % totalSlides)
        ) {
          translateX = direction === "next" ? "-100%" : "100%";
        } else {
          translateX = direction === "next" ? "100%" : "-100%";
        }

        return (
          <Slide
            key={slide.id}
            slide={slide}
            isActive={isActive}
            translateX={translateX}
            isMobile={isMobile}
          />
        );
      })}

      <SliderNavButtons goToPrev={goToPrev} goToNext={goToNext} />
    </Box>
  );
};

export default HomeSlider;
