# Multi-stage build for smaller image
FROM python:3.11-slim AS base

# Avoid buffering and .pyc files
ENV PYTHONDONTWRITEBYTECODE=1     PYTHONUNBUFFERED=1

WORKDIR /app

# Install runtime deps
RUN apt-get update && apt-get install -y --no-install-recommends     ca-certificates  && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app
COPY app.py wsgi.py ./

# Gunicorn will bind to 0.0.0.0:5000
EXPOSE 5000
CMD ["gunicorn", "-w", "2", "-k", "gthread", "-b", "0.0.0.0:5000", "wsgi:application"]
