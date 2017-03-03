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
                        <li class="choice-check"><input type="checkbox" :value="item.id" :data-name="item.name" :data-prefix="item.prefix" :data-info="baseUrl+item.id"></li>
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
                    if(!check_keyWord()){
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
</script>
