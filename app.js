const express = require('express');
const app = express();

app.get('/api', (req, res) => {
    res.json({ message: 'Hello from the backend API!' });
});

app.listen(3000, () => {
    console.log('Backend server running on port 3000');
});
