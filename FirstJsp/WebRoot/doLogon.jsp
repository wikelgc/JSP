<%@page contentType="text/html; charset=UTF-8" language="java"%>
<html>
	<head>
	 	<h2>用户登入</h2>
	</head>
	
	<body>
		<%
			String name = request.getParameter("userName");
			if(name == "null")
				name = "";
			String password = request.getParameter("passWord");
			if(password == "null")
				password ="";
		 %>
		 
		
		 	<b>用户名:</b>
		 	<%=name %>
		 	<b>密码:</b>
		 	<%=password %>
	</body>
</html>