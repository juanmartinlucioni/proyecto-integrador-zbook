var express = require('express');
var router = express.Router();
let postController = require('../controllers/postController')

router.get('/', postController.index)
router.get('/:id', postController.details)

module.exports = router;