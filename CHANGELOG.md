### Historial de Cambios ###
Todos los cambios notables del proyecto se documentarán en este archivo.

# [Próxima Versión] - Próximos Cambios ##
#  Agregado (Added)

# Cambiado (Changed)

# Corregido (Fixed)

# Obsoleto (Deprecated)

# Eliminado (Removed)

# [Version 1.0.0] - 2025-12-05 ##
#  Agregado (Added)
- Docker compose de producción.
- Docker compose de producción local.
- Configuración nginx.conf para vps
- Configuración frontend/nginx.conf para dockerfile del frontend.
- Creados dockerfiles del backend y el frontend.

# Cambiado (Changed)
- Dependencia del Backend, morgan, cambiada a dependencia de producción.

# Eliminado (Removed)
- Eliminado componente Navigation.tsx

## [Versión 0.7.0] - 2025-12-04 ##
#  Agregado (Added)
- Agregadas builds y configuraciones de producción.
- Página de jugadores.
- Página de clubes.

# Cambiado (Changed)
- Tabla de clubes modificada para que se muestre correctamente en móvil.
- Tabla de jugadores modificada para que se muestre correctamente en móvil.
- Endpoint de clubsWithTotalValue ahora devuelve también las ligas de los mismos.

## [Versión 0.6.0] - 2025-12-03 ##
#  Agregado (Added)
- Página de traspasos añadida.
- Hook para fetch condicionales añadido.
- Añadidos más traspasos, clubes y ligas en insert_V1.sql.
- Añadidas más imagenes para clubes y ligas extranjeras.
- Tabla de jugadores añadida.
- Tabla de clubes añadida.

## [Versión 0.5.0] - 2025-12-01 ##
#  Agregado (Added)
- Modal de registro éxitoso.
- Endpoint para obtener usuario a partie del auth_token.
- Menú de usuario añadido.

# Cambiado (Changed)
- Migración añadida para incluir el campo id en users.
- Fallbacks de imagenes añadidos en tablas y headers. 

# Corregido (Fixed)
- Funcionalidad del endpoint de logout corregida.

## [Versión 0.4.0] - 2025-11-29
#  Agregado (Added)
- Endpoints para recibir clubes y jugadores con su valor actual añadidos.
- Añadida Página de Detalles de Club.
- Añadida Barra de Búsqueda.
- Añadida Tabla de Traspasos al Índice.

# Cambiado (Changed)
- Refactorizado componente Home para hacerlo más compacto y divisible.

## [Version 0.3.0] - 2025-11-26
#  Agregado (Added)
- Repositorio de imagenes y funcionalidad para acceder a las mismas añadido al backend.
- Pestaña de detalles de jugadores añadida.
- Endpoints relativos a traspasos añadidos.
- Índice de la página añadido.
- Migración de la base de datos para añadir la propiedad image_url a clubs, players, leagues y countries.

# Cambiado (Changed)
- Lógica del componente Login.jsx externalizada al hook useLogin.js para una mejor legibilidad.
- Insert de la base de datos.


## [Version 0.2.0] - 2025-11-10
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
