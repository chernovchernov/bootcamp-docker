#===============================================================
#
#       This Dockerfile made by Boris Chernov forBootCamp
#
#===============================================================


# Официальный образ Python
FROM python:3.9-slim

# Установка зависимостей из requirements.txt
COPY requirements.txt .
RUN pip install -r requirements.txt

# Копируем все файлы из локальной директории в рабочую директорию контейнера
COPY . /app
WORKDIR /app

# Создаем файлы name.txt и mail.txt
RUN echo "Boris Chernov" > name.txt && \
    echo "chernov001@gmail.com" > mail.txt

# Присваиваем CONTAINERENV значение True
ENV CONTAINERENV True

# Запуск приложения
CMD ["python", "app.py"]




