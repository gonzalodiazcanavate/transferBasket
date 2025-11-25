import {createTheme} from "@mui/material/styles";

const theme = createTheme({
  palette: {
    primary: {
      main: "#03a9f4", // Azul celeste
      light: "#67daff",
      dark: "#007ac1",
    },
    secondary: {
      main: "#81d4fa", // Azul celeste más claro
      light: "#b6ffff",
      dark: "#4ba3c7",
    },
    background: {
      default: "#f5f5f5",
      paper: "#ffffff",
    },
  },
  typography: {
    fontFamily: "\"Roboto\", \"Helvetica\", \"Arial\", sans-serif",
    h4: {
      fontWeight: 600,
      color: "#007ac1",
    },
  },
});

export default theme;