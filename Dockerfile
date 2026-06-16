# Usar una imagen oficial de Python ligera
FROM python:3.9-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de tu Linux Mint al contenedor
COPY . /app

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Comando que se ejecutará al iniciar el contenedor
CMD ["python", "app.py"]
