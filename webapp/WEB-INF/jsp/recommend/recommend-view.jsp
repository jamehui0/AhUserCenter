<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>文化馆</title>
    <link rel="stylesheet" href="../css/ext/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common/base.css">
    <link rel="stylesheet" href="../css/recommend/view.css">
    <script src="../js/ext/jquery-1.11.3.js"></script>
    <script src="../js/ext/bootstrap.min.js"></script>
    <script src="../js/recommend/view.js"></script>
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
                    <li class="active">推荐页管理</li>
                </ol>
            </div>
            <!--可视化客户端-->
            <div id="view" url-edit="../recommend/recommendEdit" url-reset="此处填写不带参数的重置地址">
                <!--导航栏-->
                <ul class="view-title">
                    <li class="tab tab-focus">首页</li>
                    <li class="tab ">百姓舞台</li>
                    <li class="tab ">群星璀璨</li>
                    <li class="tab ">艺术普及</li>
                    <li class="tab ">艺考咨询</li>
                </ul>
                <!--首页-->
                <div class="view-content " style="display: block">
                    <div class="content-box">
                        <div id="code101" class="box" style="width: 402px;height: 226px">
                            <img class="pic" src="" alt=""><!--视频框-->
                        </div>
                        <div id="code102" class="box" style="width: 402px;height: 82px;top:238px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>巴蜀文艺讲堂2</span>
                            </div>
                        </div>
                        <div id="code103" class="box" style="width: 195px;height: 320px;left: 412px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>巴蜀文艺讲堂全集3</span>
                            </div>
                        </div>
                        <div id="code104" class="box box-focus" style="width: 195px;height: 154px;left: 616px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名4</span>
                            </div>
                        </div>
                        <div id="code105" class="box" style="width: 195px;height: 154px;top: 166px;;left: 616px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名5</span>
                            </div>
                        </div>
                    </div><!--首页content-box-->
                </div> <!--首页-->
                <!--百姓舞台-->
                <div class="view-content ">
                    <div class="content-box">
                        <div id="code201" class="box" style="width: 195px;height: 154px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名1</span>
                            </div>
                        </div>
                        <div id="code202" class="box" style="width: 195px;height: 154px;top: 166px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名2</span>
                            </div>
                        </div>
                        <div id="code203" class="box" style="width: 195px;height: 154px;left: 207px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名3</span>
                            </div>
                        </div>
                        <div id="code204" class="box" style="width: 195px;height: 154px;top: 166px;left: 207px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名4</span>
                            </div>
                        </div>
                        <div id="code205" class="box" style="width: 195px;height: 154px;left: 414px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名5</span>
                            </div>
                        </div>
                        <div id="code206" class="box" style="width: 195px;height: 154px;top: 166px;left: 414px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名6</span>
                            </div>
                        </div>
                        <div id="code207" class="box" style="width: 195px;height: 320px;left: 621px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名7</span>
                            </div>
                        </div>
                    </div><!--百姓舞台content-box-->
                </div> <!--百姓舞台-->
                <!--群星璀璨-->
                <div class="view-content ">
                    <div id="code301" class="content-box" style="width: 1288px;height: 320px">
                        <div class="box" style="width: 195px;height: 154px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名1</span>
                            </div>
                        </div>
                        <div id="code302" class="box" style="width: 195px;height: 154px;left: 207px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名2</span>
                            </div>
                        </div>
                        <div id="code303" class="box" style="width: 402px;height: 154px;top: 166px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名3</span>
                            </div>
                        </div>
                        <div id="code304" class="box" style="width: 195px;height: 154px;left: 414px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名4</span>
                            </div>
                        </div>
                        <div id="code305" class="box" style="width: 195px;height: 154px;top: 166px;left: 414px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名5</span>
                            </div>
                        </div>
                        <div id="code306" class="box" style="width: 195px;height: 320px;left: 621px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名6</span>
                            </div>
                        </div>
                        <div id="code307" class="box" style="width: 195px;height: 320px;left:828px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名7</span>
                            </div>
                        </div>
                        <div id="code308" class="box" style="width: 195px;height: 154px;left: 1035px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名8</span>
                            </div>
                        </div>
                        <div id="code309" class="box" style="width: 195px;height: 154px;top: 166px;left: 1035px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名9</span>
                            </div>
                        </div>
                    </div><!--群星璀璨content-box-->
                </div><!--群星璀璨-->
                <!--艺术普及-->
                <div class="view-content ">
                    <div id="code401" class="content-box">
                        <div class="box" style="width: 195px;height: 320px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名1</span>
                            </div>
                        </div>
                        <div id="code402" class="box" style="width: 402px;height: 320px;left: 207px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名2</span>
                            </div>
                        </div>
                        <div id="code403" class="box" style="width: 195px;height: 154px;left: 621px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名3</span>
                            </div>
                        </div>
                        <div id="code404" class="box" style="width: 195px;height: 154px;top: 166px;left: 621px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名4</span>
                            </div>
                        </div>
                    </div><!--艺术普及content-box-->
                </div><!--艺术普及-->
                <!--艺考资讯-->
                <div class="view-content ">
                    <div class="content-box">
                        <div id="code501" class="box" style="width: 195px;height: 320px;">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名1</span>
                            </div>
                        </div>
                        <div id="code502" class="box" style="width: 195px;height: 320px;left: 207px">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名2</span>
                            </div>
                        </div>
                        <div id="code503" class="box" style="width: 195px;height: 320px;left: 414px">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名3</span>
                            </div>
                        </div>
                        <div id="code504" class="box" style="width: 195px;height: 320px;left: 621px">
                            <img class="pic" src="" alt="">
                            <div class="txt">
                                <span>暑期公益培训报名4</span>
                            </div>
                        </div>
                    </div><!--艺考资讯content-box-->
                </div><!--艺考资讯-->
                <div class="box-search">
                    <img class="pic" src="../img/searchBtn.png" alt="">
                </div>
            </div><!--可视化客户端-->
            <div class="view-operate">
                <a class="btn btn-review" href=""><span>发布审核</span></a>
                <a class="btn btn-reset" url="../recommend?reset" data-toggle="modal" data-target="#myModal"><span>还原配置</span></a>
            </div>
        </div><!--wrapper-->
    </div><!--main-content-->
</div>
<% include ../common/modal.jsp %>
<script>
    $(function(){
        $('.btn-confirm').click(function(){
            var url=$('.btn-reset').attr('url');
            location.href=url;
        });
    })
</script>
</body>
</html>