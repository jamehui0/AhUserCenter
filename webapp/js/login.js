$(function(){
	//忘记密码点击事件
	$(".forget-pass a").on("click",function(){
		alert("管理员联系电话：13512345678")
	});
	//文本获取焦点事件
	$(".user input,.pass input").on("focus",function(){
		$("form .login-info em.prompt").text("")
	});
	//表单提交
	function formSubmit(){
		$(".form-btn input").val("登录中...");
		//调用ajax提交
		var _this=$(this);
		$.ajax({
			type : 'post',
			url : 'toLogin',
			dataType : 'json',
			data : $("form").eq(0).serialize() , 
			success : function(data) {
				if(data.resultCode=="20090003"){
					window.location.href="../app/toIndex";
				}else{
					$("form .login-info em.prompt").text(data.msg);
					$(".form-btn input").val("登录")
				}
			},
			error : function(msg) {
				$("form .login-info em.prompt").text("系统错误，请刷新页面重试！");
				$(".form-btn input").val("登录")
			}
		})
	}
	//点击提交
	$(".sub").on("click",function(){
		formSubmit()
	});
	//回车提交
	$("body").on("keydown",function(ev){
		var oEvent=ev||event;
		if(oEvent.keyCode==13){
			formSubmit()
		}
	})
});