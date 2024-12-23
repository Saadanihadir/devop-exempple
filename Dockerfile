# Utiliser une version récente de Node.js
FROM node:18

# Définir le répertoire de travail dans le conteneur avec le même nom que le dossier
WORKDIR /app

# Copier uniquement les fichiers package.json et package-lock.json pour installer les dépendances
COPY  package*.json ./



# Installer les dépendances
RUN npm install

# Copier tout le reste des fichiers dans le conteneur
COPY . .

# Exposer le port utilisé par l'application (5000 dans ce cas)
EXPOSE 5000

# Commande pour démarrer l'application

CMD ["npm", "start"]
