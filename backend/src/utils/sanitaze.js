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

// Función que modifica el dto playerFull para hacerlo más manejable en el frontend
export function sanitizePlayer(player) {
  if (!player) return null;

  return {
    ...player,

    // Añade la propiedad value, asi tenemos el valor actual y no un array con sus valores
    value: player.values?.[0]?.value ?? null,

    // // Añade la propiedad salary, asi tenemos el salario actual y no un array con sus salarios
    salary: player.salaries?.[0]?.salary ?? null,

    // Añade la propiedad nationalities, asi tenemos las ancionalidades actuales y no un array de countries
    nationalities:
      Array.isArray(player.nationalities)
        ? player.nationalities.map(n => n.country?.nationality)
        : [],

    // Eliminamos propiedades antiguas para evitar duplicados
    values: undefined,
    salaries: undefined,
  };
}