/**
 * @file Funciones de validación de inputs.
 */

/**
 * Valida que un input cumpla con los requisitos establecidos en la expresión regular. Por defecto la expresión regular validada contraseñas.
 * @param {string} input - Cadena que represanto los datos de un input del frontend.
 * @param {RegExp} regex - Expresión regular que valida la cadena.
 * @returns {boolean} - Retorna un booleano resultado de comparar el regex con el input.
 *  */
export function validateInput(input, regex=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,32}$/) {
  return regex.test(input);
}