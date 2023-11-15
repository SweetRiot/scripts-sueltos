# Usar una imagen base de Node
FROM node:18-slim

# Directorio en el contenedor
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código fuente
COPY . .

# Puerto en el que corre la app
EXPOSE 5000

# Comando para arrancar la app
CMD ["npm", "start"]
