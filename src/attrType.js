var express = require('express');
var router = express.Router();

router.get('/attrTypeList', function (req, res, next) {
    res.render('attrType/attrType-list');
});

router.get('/attrTypeEdit', function (req, res, next) {
    res.render('attrType/attrType-edit');
});

router.get('/attrTypeInfo', function (req, res, next) {
    res.render('attrType/attrType-info');
});

module.exports = router;