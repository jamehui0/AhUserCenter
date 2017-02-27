var express = require('express');
var router = express.Router();

router.get('/attributeList', function (req, res, next) {
    res.render('attribute/attribute-list');
});

router.get('/attributeEdit', function (req, res, next) {
    res.render('attribute/attribute-edit');
});

router.get('/attributeInfo', function (req, res, next) {
    res.render('attribute/attribute-info');
});

module.exports = router;