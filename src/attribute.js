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
    res.send({
        "msg": "请求成功",
        "resultCode": 20010000,
        "content": {
            "total": 1,
            "items": [
                {
                    "data": [
                        {"id": 1,"name": "位置信息", "prefix": "POSI"},
                        {"id": 2,"name": "通信及社交信息", "prefix": "CONT"}
                    ],
                    "currentPageNo": 1,
                    "totalRows": 1,
                    "pageSize": 1,
                    "firstPageNo": 1,
                    "totalPages": 1,
                    "lastPageNo": 1,
                    "prePageNo": 1,
                    "nextPageNo": 1,
                    "isHasPre": false,
                    "isHasNext": false
                }
            ]
        }
    });
});

module.exports = router;