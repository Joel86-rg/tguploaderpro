# Usa una imagen base oficial de Python
FROM python:3.10-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt .

# Instala las dependencias especificadas en requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos de tu aplicación al contenedor
COPY . .

# Define la variable de entorno para evitar la generación de archivos .pyc
ENV PYTHONUNBUFFERED=1

# Comando para ejecutar tu bot
CMD ["python", "main.py"]
