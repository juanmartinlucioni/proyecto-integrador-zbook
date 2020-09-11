var express = require('express');
var router = express.Router();

router.get('/', loginController.index)

module.exports = router;