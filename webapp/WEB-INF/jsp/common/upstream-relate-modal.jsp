<script src="../js/ext/vue.min.js"></script>
<link rel="stylesheet" href="../css/common/modal.css">
<!--选择属性类型弹窗-->
<div class="modal fade" id="attr-choice" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                属性
            </div>
            <div class="modal-body">
                <div class="choice-search mb20">
                    <input id="keyword" class="i786" type="text" name="keyWord" value="" placeholder="请输入名称或前缀进行搜索">
                    <a class="btn pull-right" href="javascript:;" @click="showData"><i class="ic ic-search"></i><span>搜索</span></a>
                </div>
                <div class="list-choice mb20 clearfix">
                    <ul class="choice-head">
                        <li class="choice-check"></li>
                        <li class="choice-name">名称</li>
                        <li class="choice-fieldname">字段名</li>
                        <li class="choice-fieldtype">字段类型</li>
                        <li class="choice-securitylevel">安全级别</li>
                        <li class="choice-operate">操作</li>
                    </ul>
                    <ul class="choice-item" v-for="item in dataItem">
                        <li class="choice-check">
                            <input type="checkbox" :value="item.id" :data-name="item.name" :data-fieldname="item.fieldname"
                                   :data-fieldtype="item.fieldtype" :data-securitylevel="item.securitylevel">
                        </li>
                        <li class="choice-name">{{item.name}}</li>
                        <li class="choice-fieldname">{{item.fieldname}}</li>
                        <li class="choice-fieldtype">{{item.fieldtype}}</li>
                        <li class="choice-securitylevel">{{item.securitylevel}}</li>
                        <li class="choice-operate">
                            <a :href="baseUrl+item.id" target="_blank"><i class="ic ic-info"></i></a>
                        </li>
                    </ul>
                </div>
                <!-- 分页码 -->
                <div id="page-attr-choice" style="text-align:center;width: 932px"></div>
                <div style="text-align: center;margin-top: 20px">
                    <input class="btn btn-ok" type="button" value="确定">
                    <a class="btn btn-close" style="margin-left: 40px" data-dismiss="modal"><span>取消</span></a>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    /**属性类型弹出前获取数据*/
    $('#attr-choice').on('show.bs.modal', function (event) {
        vm.showData();
        $('#keyword').val('');
    });
    var vm = new Vue({
        el: '#attr-choice',
        data: {
            'url': '../upstream/getAttr',
            "dataItem": [
//                {"id": 1,"name": "位置信息", "prefix": "POSI"},
//                {"id": 2,"name": "通信及社交信息", "prefix": "CONT"}
            ],
            infoUrl: '../attribute/attributeInfo?id='
        },
        methods: {
            page_active: function (res, opt) {
                var _self = this;
                var totalPages = res.content.items[0].totalPages;//总页数
                var currentPageNo = res.content.items[0].currentPageNo;//当前页数
                if (totalPages > 0) {
                    laypage({
                        cont: 'page-attr-choice', //容器。值支持id名、原生dom对象，jquery对象,
                        pages: totalPages, //总页数
                        curr: currentPageNo || 1, //当前页
                        groups: 7,//连续显示分页数
                        prev: '上一页', //若不显示，设置false即可
                        next: '下一页', //若不显示，设置false即可
                        jump: function (obj, first) { //触发分页后的回调
                            if (!first) { //点击跳页触发函数自身，并传递当前页：obj.curr
                                opt.pageNo = obj.curr;
                                $.ajax({
                                    url: _self.url,
                                    type: 'get',
                                    data: opt,
                                    dataType: "json",
                                    success: function (res) {
                                        $('#keyword').val(res.content.items[1].keyWord);
                                        _self.dataItem = res.content.items[0].data;
                                    },
                                    error: function () {
                                        alert('系统错误，请刷新后重试！')
                                    }
                                });
                            }
                        }
                    });
                }
            },
            showData: function (ev) {
                var _self = this;
                var opt = {
                    pageSize: '2',//每页条数
                    pageNo: '1'
                };
                if (typeof ev != "undefined") {
                    opt.keyWord = $('#keyword').val();
                    if (!check_keyWord()) {
                        return;
                    }
                }
                $.ajax({
                    url: _self.url,
                    type: 'get',
                    data: opt,
                    dataType: "json",
                    success: function (res) {
                        _self.dataItem = res.content.items[0].data;
                        _self.page_active(res, opt);
                    },
                    error: function () {
                        alert('系统错误，请刷新后重试！')
                    }
                });
            }
        }
    });
    $(function () {
        $('.btn-ok').click(function () {
            var html_old = $('.list-relate').html();//点击时关联列表的节点html

            var checked = $('.choice-check :checked');
            var len_choice = checked.length;
            if (len_choice == 0) {
                alert('请先选择属性');
            } else {
                var arr_id = [];//id数组
                var arr_name = [];//名称数组
                var arr_fieldname = [];//字段名数组
                var arr_fieldtype = [];//字段类型数组
                var arr_securitylevel = [];//安全级别数组
                var str_add = '';//新添加节点html
                checked.each(function () {
                    var choice_id = $(this).val();
                    var choice_name = $(this).data('name');
                    var choice_fieldname = $(this).data('fieldname');
                    var choice_fieldtype = $(this).data('fieldtype');
                    var choice_securitylevel = $(this).data('securitylevel');
                    arr_id.push(choice_id);
                    arr_name.push(choice_name);
                    arr_fieldname.push(choice_fieldname);
                    arr_fieldtype.push(choice_fieldtype);
                    arr_securitylevel.push(choice_securitylevel);
                });
                /*1.先告知服务器选中了哪些*/
                var old_checked=$('.relate-item input');
                var old_id_arr=[];
                old_checked.each(function(){
                    old_id_arr.push($(this).val());
                });
                var total_id_arr=old_id_arr.concat(arr_id);
                var data_total_id_arr=JSON.stringify(total_id_arr);
                $.ajax({
                    url: '../upstream/telArr',
                    type: 'post',
                    data: {'id_related':data_total_id_arr},
                    dataType: "json",
                    success: function (res) {

                    },
                    error: function () {
                        alert('系统错误，请刷新后重试！')
                    }
                });
                /*2.进行节点操作添加节点到关联列表*/
                for (var i = 0; i < len_choice; i++) {
                    str_add += '<ul class="relate-item">';
                    str_add += '<input type="hidden" name="" value="' + arr_id[i] + '">';
                    str_add += '<li class="relate-name">' + arr_name[i] + '</li>';
                    str_add += '<li class="relate-fieldname">' + arr_fieldname[i] + '</li>';
                    str_add += '<li class="relate-fieldtype">' + arr_fieldtype[i] + '</li>';
                    str_add += '<li class="relate-securitylevel">' + arr_securitylevel[i] + '</li>';
                    str_add += '<li class="relate-operate"><a href="javascript:;" title="移除"><i class="ic ic-remove" data-del="' + arr_id[i] + '"></i></a><a href="' + arr_id[i] + '" target="_blank"><i class="ic ic-info"></i></a></li>';
                    str_add += '</ul>';
                }
                $('.list-relate').html(html_old+str_add);
                $('#attr-choice').modal('hide')
            }
        });
    });
</script>
