# Pull base image
FROM python:3.8.10

# Set environment variable
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /postgres_dj

# Istall dependencies
COPY Pipfile Pipfile.lock /postgres_dj/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /postgres_dj/
