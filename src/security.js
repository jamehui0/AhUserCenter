var express = require('express');
var router = express.Router();

router.get('/security', function (req, res, next) {
    res.render('security/security');
});

module.exports = router;