import React from "react";
import {Box, Typography} from "@mui/material";
import CheckCircleIcon from "@mui/icons-material/CheckCircle";

const SuccessModal = () => {
  return (
    <Box
      sx={{
        position: "fixed",
        top: 0,
        left: 0,
        width: "100vw",
        height: "100vh",
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
        bgcolor: "rgba(0,0,0,0.4)",
        zIndex: 2000,
      }}
    >
      <Box
        sx={{
          backgroundColor: "white",
          p: 4,
          borderRadius: 3,
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          gap: 2,
          boxShadow: 5,
        }}
      >
        <CheckCircleIcon sx={{fontSize: 80, color: "green"}} />
        <Typography variant="h5" sx={{fontWeight: "bold"}}>
          Ha sido registrado con éxito
        </Typography>
      </Box>
    </Box>
  );
};

export default SuccessModal;
