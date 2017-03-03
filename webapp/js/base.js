$(function () {
    /*全选*/
    $('.checkall').click(function () {
        $(':checkbox').each(function(){
            this.checked=true;
        })
    });
    /*不选*/
    $('.uncheck').click(function () {
        $(':checkbox').each(function(){
            this.checked=false;
        })
    });
    /*反选*/
    $('.reverse-check').click(function () {
        $(':checkbox').each(function(){
            this.checked=!this.checked;
        })
    });
    /*返回上一页*/
    $('.btn-cancel').click(function(){
        window.history.back();
    });
    /*删除*/
    $('.ic-delete').click(function () {
        var url=$(this).attr('url');
        if(confirm('是否确定删除！')){
            console.log(url);
        }
    });
    /*批量删除*/
    $('.btn-delete').click(function () {
        var url=$(this).attr('url');
        if(confirm('是否确定删除！')){
            console.log(url);
        }
    });
    /**搜索*/
    $('.btn-search').click(function () {
        $('#form-search').trigger('submit');
        $(this).find('span').text('搜索中...').attr('disabled',true);
        setTimeout( $(this).find('span').text('搜索').attr('disabled',false),300)
    });
    /*列表搜索验证*/
    $('#form-search').submit(function(){
        var tar=$('#keyword');
        var val=tar.val();
        var reg=/^[\u4e00-\u9fa5A-Za-z0-9_]{0,30}$/;
        if(reg.test(val)){
            return true;
        }else{
            alert('搜索框中不允许输入特殊字符');
            return false;
        }
    })
});
/**名称验证
 * 输入中文字符、字母、数字、下划线；长度限制2-20位
 * */
function check_name(){
    var tar=$('#name');
    var val=tar.val();
    var em=tar.parent().find('em');
    var reg=/^[\u4e00-\u9fa5A-Za-z0-9_]{2,20}$/;
    if(reg.test(val)){
        em.html('<i class="ic ic-right">').show();
    }else{
        em.html('<i class="ic ic-warn"></i>名称输入不正确').show();
    }
    return reg.test(val);
}
/**说明验证
 * 长度限制500位
 * */
function check_desc(){
    var tar=$('#desc');
    var val=tar.val();
    var em=tar.parent().find('em');
    if(val.length>500){
        em.html('<i class="ic ic-warn"></i>说明最大长度为500字').show();
    }else{
        em.html('<i class="ic ic-right">').show();
    }
    return val.length<=500;
}