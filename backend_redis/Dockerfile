# 1.  базовий образ Python 3.9
FROM python:3.9-slim

# 2.  необхідні пакети для Redis і компіляції
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# 3.  робоча директорію для додатку
WORKDIR /app

# 4. Копіюємо файл requirements.txt у контейнер
COPY backend_redis/requirements.txt /app/requirements.txt

# 5. Встановлюємо Python залежності з requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 6. Копіюємо весь проект у контейнер
COPY . /app/

# 7. Встановлюємо змінні середовища для Django
ENV DJANGO_SETTINGS_MODULE=backend_redis.settings
ENV PYTHONUNBUFFERED=1

# 8. Відкриваємо порт 8000 для зовнішніх підключень
EXPOSE 8000

# 9. Вказуємо команду для запуску сервера
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
