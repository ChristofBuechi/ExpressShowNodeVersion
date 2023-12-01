const express = require('express');
const app = express();

// Route für HTTP-GET-Anfragen
app.get('/', (req, res) => {
    // Lese die Node.js-Version
    const nodeVersion = process.version;

    // Sende eine HTML-Antwort mit der Node.js-Version
    res.send(`<h1>Node.js Version: ${nodeVersion}</h1>`);
});

// Starte den Express-Server auf Port 3000
const port = 3000;
app.listen(port, () => {
    console.log(`Server läuft auf http://localhost:${port}`);
});
