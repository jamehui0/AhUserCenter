var express = require('express');
var router = express.Router();

router.get('/upstreamList', function (req, res, next) {
    res.render('upstream/upstream-list');
});

router.get('/upstreamEdit', function (req, res, next) {
    res.render('upstream/upstream-edit');
});

router.get('/upstreamInfo', function (req, res, next) {
    res.render('upstream/upstream-info');
});

module.exports = router;