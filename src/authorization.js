var express = require('express');
var router = express.Router();

router.get('/authorizationList', function (req, res, next) {
    res.render('authorization/authorization-list');
});

router.get('/authorizationEdit', function (req, res, next) {
    res.render('authorization/authorization-edit');
});

router.get('/authorizationInfo', function (req, res, next) {
    res.render('authorization/authorization-info');
});

router.get('/getIdentity', function (req, res, next) {
    res.send({resultCode:2000100,msg:'asdfasdfasdfasd'});
});

module.exports = router;