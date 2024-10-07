# 1.  базовий образ Python 3.9
FROM python:3.9-slim

# 2.  залежності для PostgreSQL та інші потрібні пакети
RUN apt-get update && apt-get install -y \
    libpq-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# 3. робоча директорію для додатку
WORKDIR /app

# 4. Копіюємо файл requirements.txt у контейнер
COPY backend_rds/requirements.txt /app/requirements.txt

# 5. Встановлюємо Python залежності з requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

RUN pip install django-cors-headers


# 6. Копіюємо весь проект у контейнер
COPY backend_rds/ /app/

# 7. Встановлюємо змінні середовища для Django
ENV DJANGO_SETTINGS_MODULE=backend_rds.settings
ENV PYTHONUNBUFFERED=1

# 8. Відкриваємо порт 8000 для зовнішніх підключень
EXPOSE 8000

# 9. Вказуємо команду для запуску сервера
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
