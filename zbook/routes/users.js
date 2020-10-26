// Ruta usada para probar Sequelize  y su comportamiento
var express = require('express');
var router = express.Router();
const db = require('../config/database/database')
const Usuarios = require('../config/database/models/Usuarios');
// const usuarios = require('../modules/usersModule');
var usersController = require('../controllers/usersController')

/* GET users listing. */
router.get('/', function(req, res, next) {
  usuarios = Usuarios.findAll()
    .then(usuarios => {
      console.log(usuarios[0].username);
    })
    .catch(err => console.log(err))
  res.send(usuarios[0]);
});

router.post('/logout',usersController.logout)

module.exports = router;
