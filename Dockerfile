# syntax=docker/dockerfile:1

FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt /app/requirements.txt

COPY . .

RUN pip install -r /app/requirements.txt

# 设置Django的环境变量
ENV DJANGO_SETTINGS_MODULE=second.settings

CMD ["python", "-m", "django", "runserver", "0.0.0.0:8000"]
