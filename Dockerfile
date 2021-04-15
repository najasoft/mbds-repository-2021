# Test web app that returns the name of the host/pod/container servicing req
# Linux x64
FROM node:current-alpine


# Créer un dossier dans le conteneur pour le code de l'application
RUN mkdir -p /usr/src/app

# Copie du code à partir du dossier courant
COPY . /usr/src/app

# Répertoire courant
WORKDIR /usr/src/app

# Installer dans les dépendances décrites dans packages.json
RUN npm install

# Command for container to execute
ENTRYPOINT [ "node", "app.js" ]