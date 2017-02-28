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
    <script src="../js/base.js"></script>
    <style>
        .item-name{
            width: 200px;
        }
        .item-fieldname{
            width: 300px;
        }
        .item-fieldtype{
            width: 180px;
        }
        .item-securitylevel{
            width: 172px;
        }
        .item-operate{
            width: 180px;
        }
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
                    <li class="active">属性管理</li>
                </ol>
                <a class="btn btn-add pull-right" href="../attribute/attributeEdit"><i class="ic ic-plus"></i><span>新增属性</span></a>
            </div>
            <!--搜索框-->
            <div class="search mb20">
                <form action="" method="get" id="form-search">
                    <input id="keyword" class="i894" type="text" name="" value="" placeholder="请输入内容ID或名称进行搜索">
                    <a class="btn btn-search pull-right" href=""><i class="ic ic-search"></i><span>搜索</span></a>
                </form>
            </div>
            <!--列表-->
            <div class="list mb20 shadow clearfix">
                <ul class="list-head">
                    <li class="item-name">名称</li>
                    <li class="item-fieldname">字段名称</li>
                    <li class="item-fieldtype">字段类型</li>
                    <li class="item-securitylevel">安全级别</li>
                    <li class="item-operate">操作</li>
                </ul>
                <ul class="list-item">
                    <li class="item-name">名称名称名称名称名称名</li>
                    <li class="item-fieldname">字段名称</li>
                    <li class="item-fieldtype">字段类型</li>
                    <li class="item-securitylevel">安全级别</li>
                    <li class="item-operate">
                        <a href="../attribute/attributeEdit"><i class="ic ic-edit"></i></a>
                        <a href="../attribute/attributeInfo"><i class="ic ic-info"></i></a>
                        <a href=""><i class="ic ic-delete"></i></a>
                    </li>
                    <li class="line"></li>
                </ul>
            </div>
            <!--分页-->
            <div id="laypage" style="text-align:center;width: 932px"></div>
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