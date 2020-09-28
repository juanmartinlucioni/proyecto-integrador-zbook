var express = require('express');
var router = express.Router();
let profileController = require('../controllers/profileController')

/* GET home page. */
router.get('/', profileController.index);
router.get('/:id', profileController.id);

module.exports = router;
