/**
 * @file Footer de la página
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {Box, Typography} from "@mui/material"

const Footer = () => {

  return (
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
      <Typography variant="caption" sx={{mt: 1, display: "block"}} />
    </Box>
  )
}

export default Footer;