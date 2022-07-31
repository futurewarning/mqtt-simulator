FROM python:3.9.7-slim
RUN mkdir /app
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
COPY . .
CMD ["python", "mqtt-simulator/main.py"]
