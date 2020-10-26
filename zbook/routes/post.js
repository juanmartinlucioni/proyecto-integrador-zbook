var express = require('express');
var router = express.Router();
let postController = require('../controllers/postController');

<<<<<<< HEAD
router.get('/', postController.index);
router.get('/', postController.add);
router.post('/', postController.store);
=======
router.get('/', postController.index)
router.get('/:id', postController.details)
>>>>>>> 2959ce584eb4279c011bcf9f1dcd40aba24869e8

module.exports = router;