var express = require('express');
var router = express.Router();

router.get('/', postController.index)

module.exports = router;