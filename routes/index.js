const { Router } = require('express');
const controllers = require('../controllers');
const router = Router();router.get('/', (req, res) => res.send('HOME! '))

router.post('/clientes', controllers.createCliente)

module.exports = routerVENTAS
