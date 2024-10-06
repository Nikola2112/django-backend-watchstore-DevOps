# 1. Використовуємо базовий образ Nginx для сервера
FROM nginx:alpine

# 2. Копіюємо статичні файли (HTML, JS, config.json) у директорію Nginx
COPY . /usr/share/nginx/html

# 3. Відкриваємо порт 80 для доступу до фронтенду
EXPOSE 80

# 4. Запускаємо Nginx, коли контейнер стартує
CMD ["nginx", "-g", "daemon off;"]
