/**
 * Rutas del proyecto
 */

const { Router } = require('express');
const router = Router();

const { getSedes } = require('../controlers/index.controller')
router.get('/sedes', getSedes);

module.exports = router;
