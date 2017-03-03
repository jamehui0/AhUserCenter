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
        .num-identity{
            display: inline-block;
            vertical-align: middle;
            width: 460px;
            height: 36px;
            line-height: 36px;
            background-color: #fff;
            text-align: center;
        }
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
                    <li>上游平台管理</li>
                    <li class="active">编辑</li>
                </ol>
            </div><!--content-title-->
            <form action="" method="post">
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>名称</label>
                    <input id="name" class="i400" type="text" name="" maxlength="20">
                    <em></em>
                </div>
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>回调地址</label>
                    <input id="url-req" class="i400" type="text" name="" maxlength="30">
                    <em></em>
                </div>
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>回调地址</label>
                    <input id="url-backup" class="i400" type="text" name="" maxlength="30">
                    <em></em>
                </div>
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>文件目录</label>
                    <input id="directory" class="i400" type="text" name="" maxlength="30">
                    <em></em>
                </div>
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>同步方式</label>
                    <select name="" class="i400" id="update-type">
                        <option value="1">全量</option>
                        <option value="2">增量</option>
                    </select>
                    <em></em>
                </div>
                <div class="form-list">
                    <label class="l80"><i class="ic ic-dotred"></i>识别码</label>
                    <a class="btn btn-identity"><span>生成</span></a>
                    <p class="num-identity"></p>
                    <em></em>
                </div>
                <div class="form-list textarea">
                    <label class="l80 pl16">说明</label>
                    <textarea id="desc" class="t594" name="" maxlength="500"></textarea>
                    <em></em>
                </div>
                <div class="form-list" style="width: 880px">
                    <label class="l80 pl16">属性选择</label>
                    <a class="btn btn-choice" data-toggle="modal" data-target="#attr-choice"><span>选择</span></a>
                    <div class="list-relate" style="margin-left: 88px">
                        <ul class="relate-item">
                            <input type="hidden" name="" value="">
                            <li class="relate-name">位置信息1</li>
                            <li class="relate-fieldname">asdagadfasd</li>
                            <li class="relate-fieldtype">字符串</li>
                            <li class="relate-securitylevel">一级</li>
                            <li class="relate-operate">
                                <a href="javascript:;" title="移除">
                                    <i class="ic ic-remove" url="../exhibit/delRelateCache" baseInfoId="${picInfo.id}"></i>
                                </a>
                                <a href="" target="_blank"><i class="ic ic-info"></i></a>
                            </li>
                        </ul>
                    </div>
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
        if($('.num-identity').html()==''){
            $('.num-identity').hide();
        }
        $('#name').blur(function(){
            check_name();
        });
        $('#desc').blur(function(){
            check_desc();
        });
        $('.btn-identity').click(function () {
            $.ajax({
                url: '../authorization/getIdentity',
                type: 'get',
                dataType: "json",
                success: function (res) {
                    $('.num-identity').html(res.msg).show();
                },
                error: function () {
                    alert('系统错误，请刷新后重试！')
                }
            });
        });

    });
</script>
<% include ../common/upstream-relate-modal.jsp %>
</body>
</html>