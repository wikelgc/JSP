<%@page contentType="text/html; charset=UTF-8" language="java"%>
<html>
	<head>
	 	<h2>用户登入</h2>
	</head>
	<body>
		<div>
			<form action=" doLogon.jsp">
				用户名:<br>
				<input type = "text" name = "name"><br>
				密码:<br>
				<input type = "passWord" name = "password"><br>
				
				<input type = "submit" value="登录">
				<input type = "reset" value=" 重置">
			</form>
		</div>
		
		<div>
			<form action = "doWord.jsp">
				<h2>用户留言</h2>
				标题
				<input type = "text" name = "title" size = "31"><br><br>
				内容
				<textarea type = "content" name = "content" rows = "5" cols = "25" ></textarea><br><br>
				<input type = "submit" value = "留言">
				<input type = "reset" value = "重置">
			</form>	
		</div>
		
		
		
		
		
	</body>
</html>