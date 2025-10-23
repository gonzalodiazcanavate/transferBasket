/**
 * @file - Archivo que formatea objetos para no devolver información sensible o innecesaria.
 */

// Función que elimina el campo password de un user. Evita devolver la contraseña al loguear.
export const sanitizeUser = (user) => {
  if (!user) return null;
  // eslint-disable-next-line no-unused-vars
  const {password, ...safeUser} = user;
  return safeUser;
};