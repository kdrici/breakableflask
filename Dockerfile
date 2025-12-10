FROM python:3.10-slim

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier les dépendances
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l'application
COPY . .

# Lancer l'application
CMD ["python", "main.py"]
