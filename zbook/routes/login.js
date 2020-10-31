var express = require('express');
var router = express.Router();
let loginController = require('../controllers/loginController')

router.get('/', loginController.index)
router.post('/', loginController.log)
router.post('/out', loginController.out)

module.exports = router;