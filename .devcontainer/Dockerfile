# Use the official Python image as base
FROM python:3.9-slim

# Install MySQL client and other dependencies
RUN apt-get update && apt-get install -y default-mysql-client && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "bash" ]

