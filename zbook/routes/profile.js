var express = require('express');
var router = express.Router();
let profileController = require('../controllers/profileController')

/* GET home page. */
router.get('/', profileController.index);
router.get('/:id', profileController.id);
router.get('/me/edit', profileController.edit);
router.post('/me/edit', profileController.update);

module.exports = router;
