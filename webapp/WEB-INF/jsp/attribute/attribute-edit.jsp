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
    <script src="../js/ext/laypage/laypage.js"></script>
    <script src="../js/base.js"></script>
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
        .related-info{width: 80px;}
    </style>
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
                    <li>属性管理</li>
                    <li class="active">编辑</li>
                </ol>
            </div><!--content-title-->
            <form action="" method="post">
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>名称</label>
                    <input id="name" class="i280" type="text" name="" maxlength="20">
                    <em></em>
                </div>
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>字段名称</label>
                    <input id="fieldname" class="i280" type="text" name="" maxlength="12">
                    <em></em>
                </div>
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>字段类型</label>
                    <select name="" class="i280" id="fieldtype">
                        <option value="1">String</option>
                        <option value="2">时间类型</option>
                    </select>
                    <em></em>
                </div>
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>安全级别</label>
                    <select name="" class="i280" id="securitylevel">
                        <option value="1">一级</option>
                        <option value="2">二级</option>
                        <option value="3">三级</option>
                        <option value="4">四级</option>
                        <option value="5">五级</option>
                    </select>
                    <em></em>
                </div>
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>属性类型</label>
                    <a class="btn btn-choice" data-toggle="modal" data-target="#attrType-choice"><span>选择</span></a>
                    <ul class="related-attrType" style="display: none">
                        <input class="related-id" name="relatedId" type="hidden" value="">
                        <li class="related-name">通信及社交信息</li>
                        <li class="related-prefix">asdasd</li>
                        <li class="related-info"> <a href="" target="_blank"><i class="ic ic-info"></i></a></li>
                    </ul>
                    <em></em>
                </div>
                <div class="form-list textarea">
                    <label class="l80 pl16">说明</label>
                    <textarea id="desc" class="t594" name="" maxlength="500"></textarea>
                    <em></em>
                </div>
                <div style="margin-left: 88px">
                    <input class="btn btn-submit" type="submit" value="提交">
                    <a class="btn btn-cancel" style="margin-left: 40px"><span>取消</span></a>
                </div>
            </form>
        </div><!--wrapper-->
    </div><!--main-content-->
</div>
<script>
    $(function () {
        $('#name').blur(function(){
            check_name();
        });
        $('#desc').blur(function(){
            check_desc();
            check_relate();
        });
        function check_relate(){
            var tar=$('.related-attrType');
            var val=tar.find('.related-id').val();
            var em=tar.parent().find('em');
            if(val!=''){
                em.html('<i class="ic ic-right">').show();
            }else{
                em.html('<i class="ic ic-warn"></i>请先选择属性类型').show();
            }
            return val!=''
        }
    })
</script>
<% include ../common/attr-relate-modal.jsp %>
</body>
</html>