var express = require('express');
var router = express.Router();

router.get('/authorizationList', function (req, res, next) {
    res.render('authorization/authorization-list');
});

router.get('/authorizationAdd', function (req, res, next) {
    res.render('authorization/authorization-add');
});

router.get('/authorizationEdit', function (req, res, next) {
    res.render('authorization/authorization-edit');
});

router.get('/authorizationInfo', function (req, res, next) {
    res.render('authorization/authorization-info');
});

module.exports = router;