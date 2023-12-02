# Verwende ein Fedora-Basisimage mit DNF
FROM fedora:latest

# Setze das Arbeitsverzeichnis im Container
WORKDIR /usr/src/app

# Installiere Node.js über DNF
RUN dnf install -y curl

RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

SHELL ["/bin/bash", "--login", "-c"]

RUN source ~/.bashrc

RUN nvm install --lts

# Kopiere die package.json- und package-lock.json-Dateien, um die Abhängigkeiten zu installieren
COPY package*.json ./

# Kopiere den Rest des Codes in das Arbeitsverzeichnis des Containers
COPY . .

# Kopiere die Startdatei
COPY start.sh .

# Setze die Berechtigungen für die Startdatei
RUN chmod +x start.sh

# Setze den Befehl zum Starten des Containers
CMD ["./start.sh"]
