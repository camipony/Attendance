/** Encargado de las consultas y funciones */

const { Pool } = require('pg');
require('dotenv').config({ path: '../.env' });

const pool = new Pool({
    host: 'localhost',
    user: 'postgres',
    password: '1307',
    database: 'attendace'
});

const getSedes = async (req, res) => {
    const response = await pool.query('SELECT * FROM sedes');
    console.log(response.rows);
    res.send('sedes');
}

module.exports = {
    getSedes
}