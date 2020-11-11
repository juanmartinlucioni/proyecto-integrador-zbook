var express = require('express');
var router = express.Router();
let profileController = require('../controllers/profileController')

/* GET home page. */
router.get('/', profileController.index);
router.get('/:id', profileController.id);
router.get('/me/edit', profileController.edit);
router.post('/me/edit', profileController.update);
router.get('/me/password', profileController.password)
router.post('/me/password', profileController.passwordChange);

module.exports = router;
