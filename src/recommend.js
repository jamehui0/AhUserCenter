var express = require('express');
var router = express.Router();

/*推荐页*/
router.get('/recommendList', function (req, res, next) {
    res.render('recommend/recommend-view', {title: 'recommend'});
});

router.get('/recommendEdit', function (req, res, next) {
    res.render('recommend/recommend-edit', {title: 'recommend'});
});

router.get('/recommendRelate', function (req, res, next) {
    res.render('recommend/recommend-relate', {title: 'recommend'});
});

module.exports = router;