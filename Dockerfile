# Сборка Vue
FROM node:20 AS build
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install
RUN npm run build
# Копируем все исходники
COPY . .

# Собираем проект


# Сервер Nginx
FROM nginx:alpine
COPY --from=0 /app/dist /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
