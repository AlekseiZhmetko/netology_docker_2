# Инструкция по докеризации приложения

Выполните указанные команды в заданной последовательности

1. sudo docker build -t netology_stocks_products .
*(создаем образ с помощью Dockerfile)*

2. sudo docker run --env-file .env -it --rm -p 8000:8000 netology_stocks_products
*(запускаем контейнер)*

Приложение станет доступно на локальном хосте, порт 8000
