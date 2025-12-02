/**
 * @file - Controlador de users.
 */
import {config} from "../config/config.js";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import {getUserById, getUserByUsername, getUserByUsernameOrEmail, createUser} from "../repositories/users.repository.js";
import {validateInput} from "../utils/validation.js";
import {sanitizeUser} from "../utils/sanitaze.js";

// OPciones de cookie
const COOKIE_OPTIONS = {
  httpOnly: true,
  secure: false,
  sameSite: "lax",
  path: "/",
};

// Recibe una request con los datos de un usuario y comprueba si existe un usuario con esos datos. En caso afirmativo, retorna un jwt.
export const login = async (req, res) => {
  try {
    const {username, password} = req.body;
    // Comprobamos que el nombre de usuario/email y la contraseña se hayan enviado y que sigan un formato válido.
    if(!username || !password) return res.status(500).json({error: "Error obteniendo usuario: Faltan nombre de usuario o contraseña."});
    if(
      !validateInput(password) || 
        (
          !validateInput(username, /^[a-zA-Z0-9]{8,32}$/) && 
          !validateInput(username, /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/)
        )
    )
      return res.status(500).json({error: "Error obteniendo usuario: Usuario o contraseña inválidos."});
    // Comprobamos que existe el usuario en la base de datos y que tiene esa contraseña.
    const user = await getUserByUsername(username);
    if(!user) return res.status(500).json({error: "Error obteniendo usuario: No existe un usuario con ese nombre."});
    if(!bcrypt.compareSync(password, user.password)) return res.status(500).json({ error: "Error obteniendo usuario: Contraseña incorrecta."});

    // Implementamos jwt
    const token = jwt.sign({id: user.id, username: user.username}, config.JWTSecret, {expiresIn: config.jwtExpiresIn}
    );

    // Enviamos el token en una cookie segura
    res.cookie("auth_token", token, {
      ...COOKIE_OPTIONS,
      maxAge: 1000 * 60 * 60 * 2, // 2 horas
    });

    res.status(200).json({message: "Login correcto", user: sanitizeUser(user)});
  } catch (error) {
    console.log(error);
    res.status(500).json({error: "Error obteniendo usuario."});
  }
};

// Recibe una request con los datos del usuario a registrar. Si cumple con las validaciones, se crea el usuario en la base de datos.
export const register = async(req, res) => {
  try {
    const {username, email, password} = req.body;
    // Comprobamos que el nombre de usuario, el email y la contraseña se hayan enviado y que sigan un formato válido.
    if(!username || !email || !password) 
      return res.status(500).json({error: "Error obteniendo usuario: Faltan nombre de usuario, email o contraseña."});
    const user = await getUserByUsernameOrEmail(username, email);
    if(user) return res.status(500).json({error: "Error al registrar usuario. Ya existe un usuario con ese  nombre o email."});

    if (!validateInput(password)) return res.status(500).json({error: "Error al registrar usuario. La contraseña no es válida."});
    if (!validateInput(username, /^[a-zA-Z0-9]{8,32}$/)) 
      return res.status(500).json({error: "Error al registrar usuario. El nombre de usuario no es válido."});
    if (!validateInput(email, /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/)) 
      return res.status(500).json({error: "Error al registrar usuario. El email no es válido."});

    // Hasheamos la contraseña antes de guardarla en la base de datos.
    const hashedPassword = await bcrypt.hash(password, config.saltRounds);
    // Creamos el usuario en la base de datos.
    await createUser(username, email, hashedPassword);
    res.status(201).json({ message: "Usuario creado con éxito"});
  } catch (error) {
    console.log(error);
    res.status(500).json({error: "Error registrando usuario."});
  }
}

// Cierra la sesión
export const logout = (req, res) => {
  res.clearCookie("auth_token");
  res.status(200).json({ message: "Sesión cerrada correctamente." });
};

// Comprueba que el token coincide con el usuario
export const isMe = async (req, res) => {
  try {
    const token = req.cookies.auth_token;
    if (!token) return res.status(401).json({ auth: false });

    const decoded = jwt.verify(token, config.JWTSecret);

    const user = await getUserById(decoded.id);

    res.json({ auth: true, user });
  } catch (err) {
    return res.status(401).json({ auth: false });
  }
};