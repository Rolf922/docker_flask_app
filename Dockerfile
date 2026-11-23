# 1. On part d'une image officielle de Python (légère)
FROM python:3.10-slim

# 2. On définit le dossier de travail à l'intérieur du conteneur
WORKDIR /app

# 3. On copie le fichier des dépendances dans le conteneur
COPY requirements.txt .

# 4. On installe Flask à l'intérieur du conteneur
RUN pip install --no-cache-dir -r requirements.txt

# 5. On copie le reste de notre code (app.py) dans le conteneur
COPY app.py .

# 6. On indique que le conteneur écoutera sur le port 5000
EXPOSE 5000

# 7. La commande exécutée automatiquement au démarrage du conteneur
CMD ["python", "app.py"]
