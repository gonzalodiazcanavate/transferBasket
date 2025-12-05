#### transferBasket ###

Proyecto de fin del grado de Desarrollo de Aplicaciones Web. Web de consulta de datos sobre el mundo del baloncesto al estilo transfermarkt.

## Introducción ##

El objetivo de este proyecto es crear una base para la construcción de una página web que, siguiendo el ejemplo de transfermarkt en el mundo del futbol, se convierta en un recurso fiable para consultar información relativa a valores de mercado, salarios y traspasos de jugadores.

## Features de la aplicación ##

La aplicación cuenta a día de hoy con los siguientes features:

- Autenticación de usuario con jwt.
- Middleware para proteger ciertas rutas de usuarios no autenticados.
- Listado de jugadores, clubs y traspasos.
- Información detallada sobre jugadores y clubs.
- Posibilidad de buscar jugadores y clubs específicos.
- Juego Higher or Lower de jugadores.
- Carpeta de bruno con todas las rutas locales del proyecto para probar la api facilmente.

## Despliegue de la aplicación ##

La aplicación cuenta con varios modos de despligue según los objetivos del usuario:

# Despliegue de desarrollo #

Esta opción es la recomendada para interesados en seguir desarrollando esta aplicación por la inmediatez con la que se muestran los cambios que vamos añadiendo a la aplicación. Para desplegar en modo dev debemos seguir los siguientes pasos:

-Lo primero es levantar la base de datos, el docker-compose.dev.yml lo hace por nosotros al ejecutar "docker compose -f docker-compose.dev.yml up -d" en la raíz del proyecto (o donde este el docker-compose).

- Acto seguido, en la carpeta del backend, ejecutaremos un npm install y, ya con las dependencias instaladas correctamente, npm start. Este último comando creará un cliente de prisma (La versión 7 no es compatible con nuestro esquema) ejecutará las migraciones a nuestra base de datos y levantará un servidor express en el puerto 4000.

- Tras esto ejecutariamos el script insert_v1.sql para que la base de datos no esté vacía.

- Finalmente iremos a la carpeta del frontend, ejecutaremos un npm install y, tras confirmar que las dependencias se han instalado correctamente, un npm start. Con esto se levantará nuestro frontend react+vite en http://localhost:3000.

Para esta configuración, basta con retocar los .env del backend y del frontend, el .env de la raíz del proyecto no es necesario, en el docker-compose hay información relevante de la base de datos.

# Despliegue de producción local #

Esta opción es la recomendada para probar el entorno de producción en local, incluso podría usarse el nginx.conf que hay en la raíz del proyecto para verdaderamente simular el entorno de producción. Los pasos a seguir para este despliegue son los siguientes:

- Ejecutar "docker compose -f docker-compose.prod.local.yml up -d --build".

- Una vez levantados los contenedores ejecutar el script insert_V1.sql en la base de datos.

- Acceder a localhost:3000 y comprobar si la página está levantada.

Esta opción no es muy conveniente para desarrollo pues requiere de buildear constantemente para que se reflejen los cambios.

# Despliegue de producción en VPS #

Esta opción está pensada para el despliegue final de la aplicación en un VPS:

- Lo primero será alojar el proyecto en el directorio /var/www/transferbasket.

- Seguidamente levantaremos el entorno de producción ejecutando en dicho directorio "docker compose -f docker-compose.prod.local.yml up -d --build".

- Ejecutaremos el insert_V1.sql en la base de datos.;

- Tras confirmar que nuestros contenedores funcionan correctamente, crearemos los certificados necesarios en las rutas:
    - ssl_certificate /etc/letsencrypt/live/www-transferbasket.win/fullchain.pem;
    - ssl_certificate_key /etc/letsencrypt/live/www-transferbasket.win/privkey.pem;
O en otra ruta a elección del usuario (si cambias la ruta o el tipo de certificado tendrás que modificar también el nginx.conf).

- A continuación, crearemos el archivo /etc/nginx/sites-available/transferbasket, el cual incluirá el contenido de nginx.conf en su interior. Obviamente tendremos que modificar el nginx.conf para que se adapte a nuestro dominio y demás.

- Tras esto, asegurandonos de que los puertos de nuestro servidor estén abiertos, comprobaremos si nuestra página esta accesible tanto en localhost como desde otro equipo.

Es importante modificar los valores del .env de la raíz del proyecto para hacer nuestra página más segura.

## Futuros cambios a añadir ##

La aplicación es poco más que un mvp. Hay muchas cosas que se podrían añadir. Sugiero comenzar por:

- Incluir una sección de ligas siguiendo el ejemplo de la sección de clubs.
- Incluir el valor total de una liga sumando el valor actual de todos los jugadores de dicha liga.
- Incluir refres token.
- Incluir posibilidad de recuperar/cambiar la contraseña.
- Incluir la posibilidad de que los usuarios registrados incluyan jugadores, clubes y ligas.
- Incluir soporte en la base de datos para traspasos nba (pueden ser por otro jugador, picks del draft, varios jugadores a la vez, traspasos a tres bandas...).
- Incluir partidos, clasificaciones de ligas, torneos...
- Incluir plantillas de distintas temporadas para un mismo club (la base ded datos ya soporta esto).
