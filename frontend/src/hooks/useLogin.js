import React, {useState} from "react";
import {useNavigate} from "react-router-dom";
import {loginUser, register} from "../services/usersApi";
import {validateInput} from "../utils/validation";

const useLogin = () => {
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
      newErrors.push("El email o nombre de usuario no es válido.");
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
      newErrors.push("El email de usuario no es válido.");
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

  return {
    loginData,
    setLoginData,
    registerData,
    setRegisterData,
    error,
    setError,
    errors,
    setErrors,
    isRegistered,
    setIsRegistered,
    navigate,
    handleLoginChange,
    handleRegisterChange,
    handleLoginSubmit,
    handleRegisterSubmit,
  }
}

export default useLogin;