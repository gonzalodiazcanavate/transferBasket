import React, {useState} from "react";
import {useNavigate} from "react-router-dom";
import {Container, Box, Typography, TextField, Card, Button} from "@mui/material";
import {loginUser, register} from "../services/usersApi";
import {validateInput} from "../utils/validation";

const Login = () => {
  const [loginData, setLoginData] = useState({username: "", password: ""});
  const [registerData, setRegisterData] = useState({username: "", email: "", password: ""});
  const [error, setError] = useState("");
  const [errors, setErrors] = useState([]);
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
    setErrors([]);
    const newErrors = [];
    if (
      !validateInput(loginData.username, /^[a-zA-Z0-9]{8,32}$/) && 
      !validateInput(loginData.username, /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/)
    ) 
      newErrors.push("El nombre de usuario no es válido.");
    if (!validateInput(loginData.password)) 
      newErrors.push("La contraseña no es válida.");

    // Si hay errores, detenemos el proceso
    if (newErrors.length > 0) {
      setErrors(newErrors);
      return;
    }
    try {
      await loginUser(loginData.username, loginData.password);
      navigate("/");
    } catch (err) {
      setError(err.message);
    }
  };

  // --- Registro ---
  const handleRegisterSubmit = async (e) => {
    e.preventDefault();
    setError("");
    setErrors([]);

    const newErrors = [];
    if (!validateInput(registerData.username, /^[a-zA-Z0-9]{8,32}$/)) 
      newErrors.push("El nombre de usuario no es válido.");
    if (!validateInput(registerData.email, /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/)) 
      newErrors.push("El nombre de usuario no es válido.");
    if (!validateInput(registerData.password)) 
      newErrors.push("La contraseña no es válida.");

    // Si hay errores, detenemos el proceso
    if (newErrors.length > 0) {
      setErrors(newErrors);
      return;
    }
    try {
      await register(
        registerData.username,
        registerData.email,
        registerData.password
      );
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