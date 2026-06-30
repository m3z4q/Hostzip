FROM python:3.13-slim

WORKDIR /app

RUN apt-get update && apt-get install -y unzip

COPY host.zip .

RUN unzip host.zip

RUN pip install -r /app/host/requirements.txt
RUN pip install gunicorn

WORKDIR /app/host

CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:8080"]
