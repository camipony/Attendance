/**
 * Rutas del proyecto
 */

const { Router } = require('express');
const router = Router();

const { getSedes, backHome, getStudents, getCursos, getPersonal, principal, getAdmin } = require('../controlers/index.controller')
router.get('/', principal);
router.get('/sedes', getSedes);
router.get('/home', backHome);
router.get('/students', getStudents);
router.get('/cursos', getCursos);
router.get('/personal', getPersonal);
router.get('/admin', getAdmin);

module.exports = router;
