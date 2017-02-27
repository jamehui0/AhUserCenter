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
    /*上线*/
    $('.ic-up').click(function () {
       var url=$(this).attr('url');
       if(confirm('是否确定上线！')){
           console.log(url);
       }
    });
    /*下线*/
    $('.ic-down').click(function () {
        var url=$(this).attr('url');
        if(confirm('是否确定下线！')){
            console.log(url);
        }
    });
    /*删除*/
    $('.ic-delete').click(function () {
        var url=$(this).attr('url');
        if(confirm('是否确定删除！')){
            console.log(url);
        }
    });
    /*批量上线*/
    $('.btn-up').click(function () {
        var url=$(this).attr('url');
        if(confirm('是否确定上线！')){
            console.log(url);
        }
    });
    /*批量下线*/
    $('.btn-down').click(function () {
        var url=$(this).attr('url');
        if(confirm('是否确定下线！')){
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
    /*移除关联*/
    $('.ic-remove').click(function () {
        var url=$(this).attr('url');
        var _this=$(this);
        var relate_ul=$('.relate-item');//已经关联的列表
        var relate_len=relate_ul.length;//已关联列表长度
        var sel_type=$('#sel-type');//类型下拉框
        _this.parents('.relate-item').remove();
        if(relate_len==1){
            sel_type.attr('disabled',false);
            $('#em-sel').hide();
        }
    })
});
/*验证视频图片
* 验证咨询标题图片
* */
function check_imgTitle(){
    var tar=$('#up_img');
    if(tar.val()==''){
        tar.parent().find('em').html('<i class="ic ic-warn"></i>图片不能为空').show();
        return false
    }else{
        tar.parent().find('em').html('<i class="ic ic-right"></i>').show();
        return true;
    }
}
/*验证视频地址
* ftp地址
* */
function check_ftp() {
    var strRegex = "^[0-9]*$";
    var re = new RegExp(strRegex);
    var tar=$('#ftp-video');
    var str=tar.val();
    if(str==''){
        tar.parent().find('em').html('<i class="ic ic-warn"></i>视频地址不能为空').show();
        return false
    }else{
        if(re.test(str)&&str.length==32){
            tar.parent().find('em').html('<i class="ic ic-right">').show();
            return true
        }else{
            tar.parent().find('em').html('<i class="ic ic-warn"></i>请填入正确的32位视频CODE').show();
            return false
        }
    }
}
/*验证视频名称
* 验证咨询名称
* 不超过20个字，支持中文、英文字母、数字、中英符号
* */
function check_name() {
    var tar=$('#name');
    var len=tar.val().length;
    if(len>0&&len<20){
        tar.parent().find('em').html('<i class="ic ic-right">').show();
        return true
    }else if(len==0){
        tar.parent().find('em').html('<i class="ic ic-warn"></i>名称不能为空').show();
        return false
    } else{
        tar.parent().find('em').html('<i class="ic ic-warn"></i>名称不正确').show();
        return false
    }
}
/*验证说明
*不超过100个字
* */
function check_des(){
    var tar=$('#des');
    var len=tar.val().length;
    if(len<101){
        tar.parent().find('em').html('<i class="ic ic-right">').show();
        return true
    }else{
        tar.parent().find('em').html('<i class="ic ic-warn"></i>说明不得超过100个字符').show();
        return false
    }
}
/*验证ueditor编辑器*/
function check_ueditor() {
    if(!UE.getEditor('editor').hasContents()) {
       $('.editor em').show();
        return false;
    }else{
        $('.editor em').hide();
        return true;
    }
}
/*验证关联项数目*/
function check_relate() {
    var relate_ul=$('.relate-item');//已经关联的列表
    var relate_len=relate_ul.length;//已关联列表长度
    if(relate_len==0){
        alert('请先关联内容');
        return false;
    }else{
        return true;
    }
}

