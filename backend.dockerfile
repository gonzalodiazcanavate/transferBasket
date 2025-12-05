# -------------------------
# 1) Builder Image
# -------------------------
FROM node:24-alpine AS builder

WORKDIR /app

# Copiar solo los archivos del backend
COPY backend/package*.json ./

# Instalar dependencias (solo produccion)
RUN npm install --production

# Copiar backend completo
COPY backend ./

# Generar Prisma Client
RUN npx prisma generate

# -------------------------
# 2) Final Image
# -------------------------
FROM node:24-alpine

WORKDIR /app

ENV NODE_ENV=production

# Copiar node_modules y código compilado desde el builder
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/prisma ./prisma
COPY --from=builder /app/src ./src

EXPOSE 4000

CMD ["npm", "start"]
