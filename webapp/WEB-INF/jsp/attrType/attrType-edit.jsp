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
                    <label class="l80"><i class="ic ic-dotred"></i>名称</label>
                    <input id="name" class="i280" type="text" name="" maxlength="30">
                    <em>不超过30个字符，可由中英文数字及中英文符号组成</em>
                </div>
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>前缀</label>
                    <input id="prefix" class="i280" type="text" name="" maxlength="30">
                    <em>不超过30个字符，可由中英文数字及中英文符号组成</em>
                </div>
                <div class="form-list textarea">
                    <label class="l80 pl16">备注</label>
                    <textarea id="remark" class="t594" name="" maxlength="200"></textarea>
                    <em>不超过200个字符</em>
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
        /*提交时验证*/
        $(document).submit(function () {
            var mark = 0;
            if (check_remark())mark++;
            if (check_relate())mark++;
            if (mark == 3) {
                $('.btn-submit').val('提交中...').attr('disabled',true);
                setTimeout("$('.btn-submit').val('提交').attr('disabled',false)",300);
            }else{

            }
            return false;
        })
    })
</script>
</body>
</html>