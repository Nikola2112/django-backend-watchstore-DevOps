# 1.  базовий образ Python 3.9
FROM python:3.11

# 3. робоча директорію для додатку
WORKDIR /app

# 4. Копіюємо файл requirements.txt у контейнер
COPY requirements.txt /app/

# 5. Встановлюємо Python залежності з requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

RUN pip install --upgrade pip


# 6. Копіюємо весь проект у контейнер
COPY . app/


# 8. Відкриваємо порт 8000 для зовнішніх підключень
EXPOSE 8000

# 9. Вказуємо команду для запуску сервера
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
