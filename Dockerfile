FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el directorio src
COPY app/ ./src/

EXPOSE 8000

# Ejecutar desde el módulo correcto
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000"]