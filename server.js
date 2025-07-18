const express = require('express');
const cors = require('cors');
require('dotenv').config();

const app = express();
app.use(cors());
app.use(express.json());

const gameRoutes = require('./routes/games');
const topupRoutes = require('./routes/topup');

app.use('/api/games', gameRoutes);
app.use('/api/topup', topupRoutes);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server berjalan di port ${PORT}`));