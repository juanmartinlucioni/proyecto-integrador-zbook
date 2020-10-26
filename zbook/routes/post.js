var express = require('express');
var router = express.Router();
let postController = require('../controllers/postController');

router.get('/', postController.index);
router.get('/', postController.add);
router.post('/', postController.store);

module.exports = router;