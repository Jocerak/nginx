# Utiliser une image officielle Node.js comme base
FROM node:16

# Définir le répertoire de travail
WORKDIR /usr/src/app

# Copier le fichier package.json et package-lock.json (si existants)
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le reste du code source
COPY . .

# Exposer le port utilisé par l'application
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["node", "app.js"]
