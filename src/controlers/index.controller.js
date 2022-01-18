/** Encargado de las consultas y funciones */

const { Pool } = require('pg');
require('dotenv').config({ path: '../.env' });

const pool = new Pool({
    host: 'localhost',
    user: 'postgres',
    password: '1307',
    database: 'postgres'
});

const getSedes = async (req, res) => {
    const response = await pool.query('SELECT * FROM sedes');
    res.render('sedes', {person: response.rows});
}

const principal = async (req, res) => {
    res.render('principal');
}

const getAdmin = async (req, res) => {
    const response = await pool.query('SELECT * FROM administrador');
    console.log(response);
    res.render('administrador' , {admin: response.rows});
}

const backHome = async (req, res) => {
    res.render('home');
}

const getStudents = async (req, res) => {
    const response = await pool.query('SELECT * FROM estudiantes');
    res.render('students', {person: response.rows});
}
const getCursos = async (req, res) => {
    const response = await pool.query('SELECT * FROM cursos');
    res.render('cursos', {cursos: response.rows});
}

const getPersonal = async (req, res) => {
    const response = await pool.query('SELECT * FROM personal');
    res.render('personal', {person: response.rows});
}

module.exports = {
    getSedes,
    backHome,
    getStudents,
    getPersonal,
    principal,
    getCursos, 
    getAdmin
}