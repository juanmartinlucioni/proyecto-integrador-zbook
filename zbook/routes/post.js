var express = require('express');
var router = express.Router();
let postController = require('../controllers/postController');

router.get('/', postController.index);
router.get('/:id', postController.details);
router.post('/', postController.add);
router.get('/edit/:id', postController.edit);
router.post('/edit/update/:id', postController.update);
router.get('/delete/:id', postController.delete);
router.post('/edit/destroy/:id', postController.destroy);

module.exports = router;