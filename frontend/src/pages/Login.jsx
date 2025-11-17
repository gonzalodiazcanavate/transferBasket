import React from "react";
import {Container, Box, Typography, TextField, Card, Button} from "@mui/material";
import useLogin from "../hooks/useLogin";

const Login = () => {
  const {
    loginData,
    registerData,
    error,
    errors,
    isRegistered,
    setIsRegistered,
    handleLoginChange,
    handleRegisterChange,
    handleLoginSubmit,
    handleRegisterSubmit,
  } = useLogin();

  return (
    <Container component="main" maxWidth="xs" sx={{display: "flex", flexDirection:"column", gap: 2, justifyContent: "center", alignItems: "center"}}>
      {/* --- LOGIN --- */}
      {isRegistered ? (
        <Card elevation={10} sx={{p: 4, width: "100%", mt: 8, borderRadius: 3, borderColor: "#1F29E1"}}>
          <Box sx={{display: "flex", flexDirection: "column", alignItems: "center", gap: 3}}>
            <Typography variant='h4' component="h4">Iniciar Sesión</Typography>
            <Box component="form" onSubmit={handleLoginSubmit} sx={{display: "flex", flexDirection: "column", gap: 2}}>
              <TextField id='username' type='text' label='Nombre de Usuario o email' onChange={handleLoginChange} value={loginData.username}/>
              <TextField id='password' type='password' label='Contraseña' onChange={handleLoginChange} value={loginData.password}/>
              <Button type="submit" fullWidth variant="contained" sx={{mt: 3, mb: 2, py: 1.5, borderRadius: 2}}>
                                Entrar
              </Button>
            </Box>
            <Typography>¿No tienes una cuenta? <Button onClick={() => setIsRegistered(false)}>Registrate aquí</Button></Typography>
          </Box>
          <Typography color="error" variant="body1">{error ?? ""}</Typography>
        </Card>
      ) : (
        /* --- REGISTRO --- */
        <Card elevation={10} sx={{p: 4, width: "100%", mt: 8, borderRadius: 3, borderColor: "#1F29E1"}}>
          <Box sx={{display: "flex", flexDirection: "column", alignItems: "center", gap: 3}}>
            <Typography variant='h4' component="h4">Registrarse</Typography>
            <Box component="form" onSubmit={handleRegisterSubmit} sx={{display: "flex", flexDirection: "column", gap: 2}}>
              <TextField id='username' type='text' label='Nombre de Usuario' onChange={handleRegisterChange} value={registerData.username}/>
              <TextField id='email' type='text' label='Correo electrónico' onChange={handleRegisterChange} value={registerData.email}/>
              <TextField id='password' type='password' label='Contraseña' onChange={handleRegisterChange} value={registerData.password}/>
              <Button type="submit" fullWidth variant="contained" sx={{mt: 3, mb: 2, py: 1.5, borderRadius: 2}}>
                                Registrar
              </Button>
            </Box>
            <Typography>¿Ya estas registrado? <Button onClick={() => setIsRegistered(true)}>Inicia sesión aquí</Button></Typography>
          </Box>
          <Typography color="error" variant="body1">{error ?? ""}</Typography>
        </Card>   
      )}
      {/* --- ERRORES --- */}
      {errors.length > 0 && (
        <Box sx={{mt: 2}}>
          {errors.map((errMsg, i) => (
            <Typography key={i} color="error" variant="body1">
        • {errMsg}
            </Typography>
          ))}
        </Box>
      )}
    </Container>
  )
}

export default Login;