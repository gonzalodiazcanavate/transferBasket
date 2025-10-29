/**
 * @file - Repositorio de la tabla users.
 */
import prisma from "../config/db.js";

// Devuelve el primer usuario cuyo username o email coincida con el de un registro de la tabla users
export const getUserByUsername = (value) => prisma.users.findFirst({
  where: {
    OR: [
      { username: value },
      { email: value }
    ]
  }
});

// Devuelve el primer usuario cuyo username/email coincida con el de un registro de la tabla users. Útil para  validar antes de añadir usuario.
export const getUserByUsernameOrEmail = (username, email) => prisma.users.findFirst({
  where: {
    OR: [
      { username: username },
      { email: email }
    ]
  }
});

// Crea un usuario con los datos proporcionados
export const createUser = (username, email, password) => prisma.users.create({
  data: {
    username: username,
    email: email,
    password: password,
  },
});