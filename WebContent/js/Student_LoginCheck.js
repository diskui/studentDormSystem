/**
	 检查学号是否有问题，不可以为空，开头必须为18/19/20/21，学号长10位
 */
function studentnumbCheck(){
	var obj = document.getElementById("form-group-studentnumb")
	var studentnumb = document.getElementById("studentnumb").value;
	var reg = /^(18|19|20|21)[0-9]{8}$/;
	if(reg .test(studentnumb))
		obj.className = "form-group has-success"
	else
		obj.className = "form-group has-error"
}
/**
	 检查密码是否有问题，不可以为空，不可以有空格
 */
function passwordCheck(){
	var obj = document.getElementById("form-group-password")
	var password = document.getElementById("password").value;
	var reg = /^\S*$/
	if(reg .test(password)&&password.length>0)
		obj.className = "form-group has-success"
	else
		obj.className = "form-group has-error"
}
/**
	在表单进行提交时进行检测，若有错误，阻止提交并提示
 */
function formCheck(){
	var studentnumbobj = document.getElementById("form-group-studentnumb")
	var studentnumb = document.getElementById("studentnumb").value;
	var passworobj = document.getElementById("form-group-password")
	var password = document.getElementById("password").value;
	if(studentnumb.length>0&&studentnumbobj.className=="form-group has-success")
	{
		if(password.length>0&&passworobj.className=="form-group has-success")
			return true;
		else{
			alert("请检查输入");
			return false;
		}
	}
	else
	{
		alert("请检查输入");
		return false;
	}
}