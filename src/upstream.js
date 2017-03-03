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

router.get('/getAttr', function (req, res, next) {
    var currentPageNo=req.query.pageNo;
    var keyWord=req.query.keyWord;
    var name="位置信息"+currentPageNo;
    var fieldname="asdagadfasd/"+keyWord;
    res.send({
        "msg": "请求成功",
        "resultCode": 20010000,
        "content": {
            "total": 1,
            "items": [
                {
                    "data": [
                        {"id": 1,"name": name, "fieldname":fieldname,"fieldtype":"字符串","securitylevel":"一级"},
                        {"id": 2,"name": "属性名","fieldname":"字段名","fieldtype":"时间","securitylevel":"二级"}
                    ],
                    "currentPageNo": currentPageNo,
                    "pageSize": 2,
                    "totalPages": 14
                },
                {
                    "keyWord": keyWord
                }
            ]
        }
    });
});

router.post('/telArr', function (req, res, next) {
    var a=req.body.id_related;
    console.log(a);
    res.send('发送成功');
});

module.exports = router;