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

router.get('/getAttrType', function (req, res, next) {
    var currentPageNo=req.query.pageNo;
    var name="位置信息"+currentPageNo;
    var prefix="POSI"+currentPageNo;
    res.send({
        "msg": "请求成功",
        "resultCode": 20010000,
        "content": {
            "total": 1,
            "items": [
                {
                    "data": [
                        {"id": 1,"name": name, "prefix": prefix},
                        {"id": 2,"name": "通信及社交信息", "prefix": "CONT"}
                    ],
                    "currentPageNo": currentPageNo,
                    "pageSize": 2,
                    "totalPages": 14
                }
            ]
        }
    });
});

module.exports = router;