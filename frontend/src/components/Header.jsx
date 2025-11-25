// eslint-disable-next-line no-unused-vars
import React from "react";
import {AppBar, Box, Button, Link, TextField, Toolbar, Typography} from "@mui/material";
import logo from "../assets/Transferbasket.jpeg";
import SearchIcon from "@mui/icons-material/Search";

const Header = () => {

  return (
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
          py: {xs: 0.5, sm: 1},
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
            gap: {xs: 1, md: 2.5},
            justifyContent: "center",
          }}
        >
          <Button color="inherit" component={Link} to="/" sx={{fontWeight: 500}}>
              Inicio
          </Button>
          <Button color="inherit" component={Link} to="/jugadores" sx={{fontWeight: 500}}>
              Jugadores
          </Button>
          <Button color="inherit" component={Link} to="/equipos" sx={{fontWeight: 500}}>
              Equipos
          </Button>
          <Button color="inherit" component={Link} to="/transferencias" sx={{fontWeight: 500}}>
              Transferencias
          </Button>
        </Box>

        <Box
          sx={{
            display: "flex",
            alignItems: "center",
            gap: {xs: 1, sm: 2},
            flexWrap: "wrap",
          }}
        >
          <TextField
            size="small"
            variant="outlined"
            placeholder="Buscar jugador o equipo..."
            InputProps={{
              endAdornment: <SearchIcon fontSize="small" sx={{color: "text.secondary"}} />,
            }}
            sx={{
              backgroundColor: "rgba(255,255,255,0.95)",
              borderRadius: 1,
              width: {xs: 140, sm: 180},
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
  )
}

export default Header