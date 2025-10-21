import React, {useState} from "react";
import {useNavigate} from "react-router-dom";
import {Container, Box, Typography, TextField, Card, Button} from "@mui/material";
import {loginUser, register} from "../services/usersApi";

const login = () => {
  const [loginData, setLoginData] = useState({username: "", password: ""});
  const [registerData, setRegisterData] = useState({username: "", email: "", password: ""});
  const [error, setError] = useState("");
  const [success, setSuccess] = useState(null);
  const [isRegistered, setIsRegistered] = useState(true);
  const navigate = useNavigate();

  // --- Handlers para los formularios ---
  const handleLoginChange = (e) => {
    setLoginData({...loginData, [e.target.id]: e.target.value});
  };

  const handleRegisterChange = (e) => {
    setRegisterData({...registerData, [e.target.id]: e.target.value});
  };

  // --- Login ---
  const handleLoginSubmit = async (e) => {
    e.preventDefault();
    setError("");
    setSuccess("");

    try {
      const data = await loginUser(loginData.username, loginData.password);
      setSuccess(`Bienvenido, ${data.user.username}`);
      navigate("/");
    } catch (err) {
      setError(err.message);
    }
  };

  // --- Registro ---
  const handleRegisterSubmit = async (e) => {
    e.preventDefault();
    setError("");
    setSuccess("");

    try {
      await register(
        registerData.username,
        registerData.email,
        registerData.password
      );
      setSuccess("Usuario registrado correctamente. Ya puedes iniciar sesión.");
    } catch (err) {
      setError(err.message);
    }
  };
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
          <Typography color="error">{error ?? ""}</Typography>
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
          <Typography color="error">{error ?? ""}</Typography>
        </Card>   
      )}
    </Container>
  )
}

export default login;