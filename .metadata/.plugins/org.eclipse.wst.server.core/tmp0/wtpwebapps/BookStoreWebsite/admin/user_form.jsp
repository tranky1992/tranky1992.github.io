<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Create New User</title>
</head>
<body>
<jsp:directive.include file="header.jsp" />
	<div align="center">
		<h2>Create New User</h2>
	</div>
	<br>
	<div align="center">
	<form action="create_user" method="post" onsubmit="return validateFormInput()">
	 <table>
	 	
	 	<tr>
	 		<td align="right">Email: </td>
	 		<td align="left"><input type="text" name="email" id="email" size="25"/></td>
	 	</tr>
	 	<tr>
	 		<td align="right">Full Name: </td>
	 		<td align="left"><input type="text" id="fullname" name="fullname" size="25"/></td>
	 	</tr>
	 	<tr>
	 		<td align="right">Password: </td>
	 		<td align="left"><input type="password" id="password" name="password" size="25"/></td>
	 	</tr>
	 	<tr>
	 		<td align="right">Confirm Password: </td>
	 		<td align="left"><input type="password" id="password1" name="password1" size="25"/></td>
	 	</tr>
	 	<div id="error-nul"></div>
	 	<tr><td>&nbsp;</td></tr>
	 	<tr>
	 		<td colspan="2" align="center">
	 			<input type="submit" name="submit" value="Save"/>&nbsp;&nbsp;&nbsp;&nbsp;
	 			<input type="button" name="cancel" value="Cancel" onclick="javascript:history.go(-1)"/>
	 		</td>
	 	</tr>
	 </table>
	</form>	
	</div>
	<jsp:directive.include file="footer.jsp" />
</body>
<script type="text/javascript">
	function validateFormInput() {
		var fieldEmail = document.getElementById("email");
		var fieldFullname = document.getElementById("fullname");
		var fieldPassword = document.getElementById("password");
		var fieldConfirmpassword = document.getElementById("password1");
		var message = document.getElementById("error-nul");
		var goodColor = "#007f00";
		var badColor = "#ff6666";
		if(fieldEmail.value.length == 0){
			alert("Mời bạn nhập email!");
			fieldEmail.focus();
			return false;
		}
		if(fieldFullname.value.length == 0){
			alert("Mời bạn nhập họ tên!");
			fieldFullname.focus();
			return false;
		}
		if(fieldPassword.value.length == 0){
			alert("Mời bạn nhập mật khẩu!");
			fieldPassword.focus();
			return false;
		}
		if(fieldConfirmpassword.value.length == 0){
			alert("Mời bạn nhập lại mật khẩu!");
			fieldConfirmpassword.focus();
			return false;
		}
		if(fieldPassword.value == fieldConfirmpassword.value){
			fieldConfirmpassword.style.backgroundColor = goodColor;
			fieldPassword.style.backgroundColor = goodColor;
			message.style.color = gooColor;
			message.innerHTML="ok";
		}
		else{
			fieldConfirmpassword.style.backgroundColor = badColor;
			alert("Mời bạn nhập lại mật khẩu!");
			fieldPassword.focus();
			fieldConfirmpassword.focus();
			return false;
		}
		return true;
	}
</script>
</html>