<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>文化馆</title>
    <link rel="stylesheet" href="../css/ext/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common/base.css">
    <link rel="stylesheet" href="../css/recommend/recommend.css">
    <script src="../js/ext/jquery-1.11.3.js"></script>
    <script src="../js/ext/bootstrap.min.js"></script>
    <script src="../js/base.js"></script>
</head>
<body>
<% include ../common/header.jsp %>
<div class="main">
    <% include ../common/menu.jsp %>
    <div class="main-content">
        <div class="wrapper">
            <div class="content-title">
                <!--面包屑-->
                <ol class="breadcrumb">
                    <li>推荐页管理</li>
                    <li>编辑</li>
                    <li class="active">关联内容</li>
                </ol>
            </div>
            <!--搜索框-->
            <div class="search mb20">
                <form action="" method="get" id="form-search">
                    <input class="i786" type="text" name="" value="">
                    <a class="btn btn-search pull-right" href=""><i class="ic ic-search"></i><span>搜索</span></a>
                </form>
            </div>
            <!--列表-->
            <form action="" method="get" id="form-list">
                <!--如果选择视频栏目或者资讯栏目-->
                <div class="list mb20 shadow clearfix">
                    <ul class="list-head">
                        <li class="item-check"></li>
                        <li class="item-id">ID</li>
                        <li class="item-name">名称</li>
                        <li class="item-type">类型</li>
                        <li class="item-operate">操作</li>
                    </ul>
                    <% for(var i=0; i<5; i++) {%>
                    <ul class="list-item">
                        <li class="item-check"><input name="relate" type="radio"></li>
                        <li class="item-id">888888</li>
                        <li class="item-name">2015年度四川省文化馆党建工作述职情况报告2015年度四川省文化馆党建工作述职情况报告</li>
                        <li class="item-type">视频栏目</li>
                        <li class="item-operate">
                            <a href=""><i class="ic ic-info"></i></a>
                        </li>
                        <li class="line"></li>
                    </ul>
                    <% } %>
                </div>
                <!--如果选择单一视频或者单一资讯-->
                <div class="list mb20 shadow clearfix">
                    <ul class="list-head">
                        <li class="item-check"></li>
                        <li class="item-id">ID</li>
                        <li class="item-name">名称</li>
                        <li class="item-img">图片</li>
                        <li class="item-type">类型</li>
                        <li class="item-operate">操作</li>
                    </ul>
                    <% for(var i=0; i<5; i++) {%>
                    <ul class="list-item">
                        <li class="item-check"><input name="relate" type="radio"></li>
                        <li class="item-id">888888</li>
                        <li class="item-name">2015年度四川省文化馆党建工作述职情况报告2015年度四川省文化馆党建工作述职情况报告</li>
                        <li class="item-img"><img src="../images/base/img-item.jpg" alt=""></li>
                        <li class="item-type">单一视频</li>
                        <li class="item-operate">
                            <a href=""><i class="ic ic-info"></i></a>
                        </li>
                        <li class="line"></li>
                    </ul>
                    <% } %>
                </div>
            </form>
            <!--分页-->
            <div id="laypage" style="text-align:center;width: 932px"></div>
            <div>
                <a class="btn btn-submit" href="/columnAdd"><span>提交</span></a>
                <a class="btn btn-cancel" style="margin-left: 40px"><span>取消</span></a>
            </div>
        </div>
    </div>
</div>
<script src="../js/ext/laypage/laypage.js"></script>
<script>
    laypage({
        cont: 'laypage',
        pages: 11,
        groups: 7,//连续显示分页数
        first: false, //将首页显示为数字1,。若不显示，设置false即可
        last: false, //将尾页显示为总页数。若不显示，设置false即可
        prev: '上一页', //若不显示，设置false即可
        next: '下一页', //若不显示，设置false即可
        jump: function (obj) {

        }
    })
</script>
</body>
</html>