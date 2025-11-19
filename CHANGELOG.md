### Historial de Cambios ###
Todos los cambios notables del proyecto se documentarán en este archivo.

## [Version 0.3.0] - Añadir nuevos cambios ##
#  Agregado (Added)
- Repositorio de imagenes y funcionalidad para acceder a las mismas añadido al backend.
- Pestaña de detalles de jugadores añadida.

# Cambiado (Changed)
- Lógica del componente Login.jsx externalizada al hook useLogin.js para una mejor legibilidad.

# Obsoleto (Deprecated)

# Eliminado (Removed)

# Corregido (Fixed)


## [Version 0.2.0] - Añadir nuevos cambios ##
#  Agregado (Added)
- Creación de los endpoints y las apis de jugadores, clubes, valores y usuarios.
- Autenticación con jwt incorporada.
- Creación del componente Login.


## [Versión 0.1.0] - 2025-10-04 ##
# Agregado (Added)
- Despliegue del backend con Express en el puerto 4000.
- Creación de repositorio y controlador de players.
- Agragado Docker-compose que genera automáticamente la base de datos del proyecto.
- Incorporación de prisma como ORM y primera migación de nombre 'init'.
- Despliegue del frontend con Vite y React en el puerto 3000.
- Creación del componente Home.
- Creación de api.js que conecta el frontend con el backend.
- Configuraciones varias del proyecto.
