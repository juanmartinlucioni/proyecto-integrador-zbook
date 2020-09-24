var express = require('express');
var router = express.Router();
let feedController = require('../controllers/feedController')

/* GET home page. */
router.get('/', feedController.index);

module.exports = router;