<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>安徽电信用户中心管理平台</title>
    <link rel="stylesheet" href="../css/ext/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common/base.css">
    <script src="../js/ext/jquery-1.11.3.js"></script>
    <script src="../js/ext/bootstrap.min.js"></script>
    <style>
        .item-name{width: 326px}
        .item-securitylevel{width: 120px}
        .item-identity{width: 446px}
        .item-operate{width: 140px}
    </style>
</head>
<body>
<% include ../common/header.jsp %>
<div class="main">
    <% include ../common/menu.jsp %>
    <div class="main-content">
        <div class="wrapper">
            <!--title-->
            <div class="content-title">
                <!--面包屑-->
                <ol class="breadcrumb">
                    <li class="active">授权管理</li>
                </ol>
                <a class="btn btn-add pull-right" href="../authorization/authorizationEdit"><i class="ic ic-plus"></i><span>新增授权</span></a>
            </div>
            <!--搜索框-->
            <div class="search mb20">
                <form action="" method="get" id="form-search">
                    <input id="keyword" class="i894" type="text" name="" value="" placeholder="请输入名称进行搜索">
                    <a class="btn btn-search pull-right" href=""><i class="ic ic-search"></i><span>搜索</span></a>
                </form>
            </div>
            <!--列表-->
            <div class="list mb20 shadow clearfix">
                <ul class="list-head">
                    <li class="item-name">名称</li>
                    <li class="item-securitylevel">安全级别</li>
                    <li class="item-identity">识别码</li>
                    <li class="item-operate">操作</li>
                </ul>
                <ul class="list-item">
                    <li class="item-name">名称名称名称名称名称名称名称名称名称名称名称名称名称</li>
                    <li class="item-securitylevel">安全级别</li>
                    <li class="item-identity">识别码</li>
                    <li class="item-operate">
                        <a href="../authorization/authorizationEdit"><i class="ic ic-edit"></i></a>
                        <a href="../authorization/authorizationInfo"><i class="ic ic-info"></i></a>
                        <a href=""><i class="ic ic-delete"></i></a>
                    </li>
                    <li class="line"></li>
                </ul>
            </div>
            <!--分页-->
            <div id="laypage" style="text-align:center;width: 1032px"></div>
        </div><!--wrapper-->
    </div><!--main-content-->
</div>
<script src="../js/ext/laypage/laypage.js"></script>
<script>
    $(function(){
        /**java传值*/
        var totalPages=11;//总页数
        var keyword='关键词';//关键词
        var curr=3;//当前页码

        if(totalPages>1){
            laypage({
                cont: 'laypage',
                pages: totalPages,
                curr:curr,
                groups: 7,//连续显示分页数
                prev: '上一页', //若不显示，设置false即可
                next: '下一页', //若不显示，设置false即可
                jump: function (obj) {

                }
            })
        }
    });
</script>
</body>
</html>