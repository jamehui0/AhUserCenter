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
                    <li>属性类型管理</li>
                    <li class="active">编辑</li>
                </ol>
            </div><!--content-title-->
            <form action="" method="post">
                <div class="form-list">
                    <label class="l46"><i class="ic ic-dotred"></i>名称</label>
                    <input id="name" class="i400" type="text" name="" maxlength="20">
                    <em></em>
                </div>
                <div class="form-list">
                    <label class="l46"><i class="ic ic-dotred"></i>前缀</label>
                    <input id="prefix" class="i400" type="text" name="" maxlength="10">
                    <em></em>
                </div>
                <div class="form-list textarea">
                    <label class="l46 pl16">说明</label>
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
        $('#prefix').blur(function(){
            check_prefix();
        });
        $('#desc').blur(function(){
            check_desc();
        });
        /**前缀验证
         *字母；长度限制2-10位
         * */
        function check_prefix(){
            var tar=$('#prefix');
            var val=tar.val();
            var em=tar.parent().find('em');
            var reg=/^[A-Za-z]{2,10}$/;
            if(reg.test(val)){
                em.html('<i class="ic ic-right">').show();
            }else{
                em.html('<i class="ic ic-warn"></i>前缀输入不正确').show();
            }
            return reg.test(val);
        }
    });
</script>
</body>
</html>