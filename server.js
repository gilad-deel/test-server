const express = require('express');
const app = express();

app.use((req, res) => res.json({method: req.method, url: req.url, headers: req.headers, ip: req.ip})).listen(3000);
