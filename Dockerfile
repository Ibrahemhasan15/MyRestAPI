# Verwende ein offizielles Python-Image als Basisimage
FROM python:3.8-slim

# Setze das Arbeitsverzeichnis innerhalb des Containers
WORKDIR /app

# Kopiere die Dateien requirements.txt und app.py in das Arbeitsverzeichnis im Container
RUN pip install --upgrade pip

COPY requirements.txt /app/
COPY index.py /app/


# Installiere die Python-Abhängigkeiten
RUN pip install --no-cache-dir -r requirements.txt

# Öffne den Port 5000 für eingehende Anfragen
EXPOSE 5000

# Starte die Flask-Anwendung, wenn der Container gestartet wird
CMD ["python", "index.py"]
