var express = require('express');
var router = express.Router();
let exploreController = require('../controllers/exploreController')

/* GET home page. */
router.get('/', exploreController.index);

module.exports = router;