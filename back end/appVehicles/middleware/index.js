var express = require('express');
var auth = require('./auth');
var router = express.Router();
var verifikasi = require('./verifikasi')


router.post('/register', auth.registrasi);
router.post('/login', auth.login);
router.post('/vehiclebrand',verifikasi(), auth.addbrand); 
router.put('/vehiclebrand',verifikasi(), auth.editbrand);


module.exports = router;