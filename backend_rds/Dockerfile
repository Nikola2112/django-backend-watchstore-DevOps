# Используем базовый образ Python
FROM python:3.11

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл зависимостей
COPY requirements.txt /app/

# Обновляем pip и устанавливаем зависимости
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Копируем остальные файлы приложения
COPY . /app/

# Запускаем приложение
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
