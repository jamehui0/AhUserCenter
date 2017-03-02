<script src="../js/ext/vue.min.js"></script>
<!--选择属性类型弹窗-->
<div class="modal fade" id="attrType-choice" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                <style>
                    li>div{
                        display: inline-block;
                    }
                </style>
                <ul>
                    <li class="first-line">
                        <div class="recharge">名称</div>
                        <div class="purchase">前缀</div>
                        <div class="remain">操作</div>
                    </li>
                    <li class="other-line" v-for="item in dataItem">
                        <div class="account">{{item.name}}</div>
                        <div class="price">{{item.prefix}}</div>
                        <div class="price">
                            <a :href="baseUrl+item.id" target="_blank">{{item.id}}</a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<script>
    /**属性类型弹出前获取数据*/
    $('#attrType-choice').on('show.bs.modal', function (event) {
        vm.showData();
    });
    var vm = new Vue({
        el: '#attrType-choice',
        data: {
            'url': '../attribute/getAttrType',
            "dataItem": [
//                {"id": 1,"name": "位置信息", "prefix": "POSI"},
//                {"id": 2,"name": "通信及社交信息", "prefix": "CONT"}
            ],
            baseUrl:'../attrType/attrTypeInfo?id='
        },
        methods: {
            page_active: function (res, opt) {
                var _self = this;
                var totalPages = res.content.items[0].totalPages;//总页数
                var currentPageNo = res.content.items[0].currentPageNo;//当前页数
                if (totalPages > 1) {
                    laypage({
                        cont: 'page2', //容器。值支持id名、原生dom对象，jquery对象,
                        pages: totalPages, //总页数
                        curr: currentPageNo || 1, //当前页
                        skin: '#b7b7b7',
                        jump: function (obj, first) { //触发分页后的回调
                            if (!first) { //点击跳页触发函数自身，并传递当前页：obj.curr
                                opt.pageNo = obj.curr;
                                $.ajax({
                                    url: _self.url,
                                    type: 'get',
                                    data: opt,
                                    dataType: "json",
                                    success: function (res) {
//                                        _self.dataItem = res.content.items[0].data;
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
                $.ajax({
                    url: _self.url,
                    type: 'get',
                    data: opt,
                    dataType: "json",
                    success: function (res) {
                        _self.dataItem = res.content.items[0].data;
//                        _self.page_active(res, opt);
                    },
                    error: function () {
                        alert('系统错误，请刷新后重试！')
                    }
                })
            }
        }
    });
</script>
