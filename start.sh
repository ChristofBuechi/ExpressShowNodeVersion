#!/bin/sh

# Source die bashrc um nvm innerhalb der /bin/sh bereitzustellen
source ~/.bashrc
echo "Vor dem setzen der default node Version: aktuell verwendete Version: $(node --version)"

# Setze die Node Version der Umgebungsvariable
nvm alias default $NODE_VERSION

# Lese die neu gesetzten Umgebungsvariablen neu ein
source ~/.bashrc

# Gib die Node.js-Version aus
echo "Verwendete Node.js-Version: $(node --version)"

# Installiere dependencies der auszuführenden Applikation
npm install

# Starte den Node.js-Server
npm start
