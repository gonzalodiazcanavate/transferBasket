# --------------------------------
# 1) BUILD STAGE (Node + Vite)
# --------------------------------
FROM node:24-alpine AS builder

WORKDIR /app

# Copiamos package.json del frontend
COPY frontend/package*.json ./

# Instalamos dependencias
RUN npm install --production

# Copiamos todo el frontend
COPY frontend .

# Realizamos el build
RUN npm run build


# --------------------------------
# 2) PRODUCTION STAGE (Nginx)
# --------------------------------
FROM nginx:alpine

# Borramos la configuración por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copiamos el build estático al servidor Nginx
COPY --from=builder /app/dist /usr/share/nginx/html

# Copiamos nuestra configuración personalizada de Nginx
COPY frontend/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]