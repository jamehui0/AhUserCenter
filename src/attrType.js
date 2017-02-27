var express = require('express');
var router = express.Router();

/*推荐页*/
router.get('/attrTypeList', function (req, res, next) {
    res.render('attrType/attrType-list', {title: 'attrType'});
});

router.get('/attrTypeEdit', function (req, res, next) {
    res.render('attrType/attrType-edit', {title: 'attrType'});
});

module.exports = router;