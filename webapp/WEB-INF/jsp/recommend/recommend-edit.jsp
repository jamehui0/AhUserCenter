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
    <script src="../js/ext/uploadPreview.js"></script>
    <script src="../js/base.js"></script>
    <script src="../js/recommend/recommend.js"></script>
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
                    <li class="active">编辑</li>
                </ol>
            </div><!--content-title-->
            <form action="" method="post">
                <div class="form-list">
                    <label><i class="ic ic-dotred"></i>图片</label>
                    <div class="img-ext">
                        <div id="imgdiv" class="image-preview">
                            <img style="width: 400px;height: 242px" id="imgShow" src="">
                        </div>
                        <div class="filebtn">
                            <a class="btn btn-upimg" href="javascript:"><span>上传图片</span></a>
                            <em>图片大小为540*320</em>
                            <input type="file" id="up_img" name="file_name">
                        </div>
                    </div>
                </div>
                <div class="form-list">
                    <label><i class="ic ic-dotred"></i>类型</label>
                    <select id="sel-type" class="i280">
                        <option value="1">单一视频</option>
                        <option value="2">单一资讯</option>
                        <option value="3">视频栏目</option>
                        <option value="4">资讯栏目</option>
                    </select>
                    <span style="margin-left: 10px"><i class="ic ic-dotblue"></i>序号：1</span>
                </div>
                <div class="form-list">
                    <label><i class="ic ic-dotred"></i>名称</label>
                    <input id="name" class="i280" type="text" name="" maxlength="20">
                    <em>不超过20个字符，可由中英文数字及中英文符号组成</em>
                </div>
                <div class="form-list textarea">
                    <label class="l48">说明</label>
                    <textarea id="des" class="t594" name=""></textarea>
                    <em>不超过100个字符</em>
                </div>
                <div class="form-list" style="margin-left: 56px">
                    <a id="relate" class="btn btn-relate" href="/recommend/recommendRelate"><span>关联内容</span></a>
                    <div class="list-relate">
                        <!--如果选择视频栏目或者资讯栏目-->
                        <div class="relate-column">
                            <ul class="relate-item">
                                <li class="relate-id">888888</li>
                                <li class="relate-name">2015年度四川省文化馆党建工作述职情况报告2015年度四川省文化馆党建工作述职情况报告</li>
                                <li class="relate-operate">
                                    <a href="javascript:"><i class="ic ic-remove"></i></a>
                                </li>
                            </ul>
                        </div>
                        <!--如果选择单一视频或者单一资讯-->
                        <div class="relate-single">
                            <ul class="relate-item">
                                <li class="relate-id">888888</li>
                                <li class="relate-name">2015年度四川省文化馆党建工作述职情况报告2015年度四川省文化馆党建工作述职情况报告</li>
                                <li class="relate-img"><img src="../images/base/img-item.jpg" alt=""></li>
                                <li class="relate-time">8888-88-88</li>
                                <li class="relate-operate">
                                    <a href="javascript:"><i class="ic ic-remove"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div style="margin-left: 56px">
                    <input class="btn btn-submit" type="submit" value="提交">
                    <a class="btn btn-cancel" style="margin-left: 40px"><span>取消</span></a>
                </div>
            </form>
        </div><!--wrapper-->
        <div class="preview">
            <img class="img-responsive" src="../images/base/client-index.png" alt="">
        </div>
    </div><!--main-content-->
</div>
<script>
    $(function () {
        /* 关联 */
        $('#relate').click(function(){
//            var columnEntity_type=$('#columnEntity-type').val();
//            var columnModel_id=$('#columnModel-id').val();
//            var onlineState=$('#onlineState').val();
//            var columnEntity_name=$('#columnEntity-name').val();
//            var columnEntity_descInfo=$('#columnEntity-descInfo').val();
//            var url='../columnManAction/loadRelateContentInfo?columnEntity.id='+columnModel_id+'&columnEntity.type='+columnEntity_type
//                    +'&columnEntity.onlineState='+onlineState+'&columnEntity.name='+columnEntity_name+'&columnEntity.descInfo='+columnEntity_descInfo;
//            location.href = url;
        });
        /*提交时验证*/
        $(document).submit(function () {
            check_imgTitle();
            check_name();
            check_des();
            check_relate();
            if(check_imgTitle()&&check_name()&&check_des()&&check_relate()){
                console.log('可以提交')
            }
            return false;
        })
    })
</script>
</body>
</html>