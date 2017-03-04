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
/*检查识别码不为空*/
function check_identity(){
    var tar=$('.num-identity');
    var val=tar.html();
    var em=tar.parent().find('em');
    if(val!=''){
        em.html('<i class="ic ic-right">').show();
    }else{
        em.html('<i class="ic ic-warn"></i>识别码为必填项').show();
    }
}
/*检查弹窗搜索关键词*/
function check_keyWord(){
    var tar=$('#keyword');
    var val=tar.val();
    var reg=/^[\u4e00-\u9fa5A-Za-z0-9_]{0,30}$/;
    if(reg.test(val)){
        return true;
    }else{
        alert('搜索框中不允许输入特殊字符');
        return false;
    }
}
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
/**验证url地址*/
function IsURL(str_url) {
    var strRegex = '^((https|http|ftp|rtsp|mms)?://)'
        + '?(([0-9a-z_!~*\'().&=+$%-]+: )?[0-9a-z_!~*\'().&=+$%-]+@)?' //ftp的user@
        + '(([0-9]{1,3}.){3}[0-9]{1,3}' // IP形式的URL- 199.194.52.184
        + '|' // 允许IP和DOMAIN（域名）
        + '([0-9a-z_!~*\'()-]+.)*' // 域名- www.
        + '([0-9a-z][0-9a-z-]{0,61})?[0-9a-z].' // 二级域名
        + '[a-z]{2,6})' // first level domain- .com or .museum
        + '(:[0-9]{1,4})?' // 端口- :80
        + '((/?)|' // a slash isn't required if there is no file name
        + '(/[0-9a-z_!~*\'().;?:@&=+$,%#-]+)+/?)$';
    var re = new RegExp(strRegex);
    return re.test(str_url);
}