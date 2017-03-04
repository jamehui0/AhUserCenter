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
        .related-attrType{
            height: 36px;
            line-height: 28px;
            display: inline-block;
            vertical-align: middle;
            background-color: #fff;
        }
        .related-attrType li{
            padding: 0 6px;
            text-align: center;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .related-attrType li,.related-attrType i{
            display: inline-block;
            vertical-align: middle;
        }
        .related-name{width: 194px;}
        .related-prefix{width: 180px;}
    </style>
</head>
<body>
<% include ../common/header.jsp %>
<div class="main">
    <div class="main-content">
        <div class="wrapper">
            <div class="content-title">
                <!--面包屑-->
                <ol class="breadcrumb">
                    <li>属性管理</li>
                    <li class="active">详情</li>
                </ol>
            </div><!--content-title-->
            <div class="info-list">
                <label class="l80">名称</label>
                <span>名称名称名称名称名称名称名称名称</span>
            </div>
            <div class="info-list">
                <label class="l80">字段名称</label>
                <span>字段名称字段名称字段名称字段名称</span>
            </div>
            <div class="info-list">
                <label class="l80">字段类型</label>
                <span>时间</span>
            </div>
            <div class="info-list">
                <label class="l80">安全级别</label>
                <span>一级</span>
            </div>
            <div class="info-list">
                <label class="l80">属性类型</label>
                <ul class="related-attrType">
                    <li class="related-name">通信及社交信息</li>
                    <li class="related-prefix">asdasd</li>
                </ul>
            </div>
            <div class="info-list">
                <label class="l80">说明</label>
                <p>说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明说明</p>
            </div>
            <div class="info-list">
                <label class="l80">修改时间</label>
                <span>2017-02-15</span>
            </div>
        </div><!--wrapper-->
    </div><!--main-content-->
</div>
</body>
</html>