var express = require('express');
var router = express.Router();
let searchController = require('../controllers/searchController')

/* GET home page. */
router.get('/', searchController.results);

module.exports = router;