<%@page import="com.wgh.bean.isSuccess"%>
<%@page contentType="text/html; charset=UTF-8" language="java"%>

<html>
	<head>
	 	<h2>用户登入</h2>
	 	<!--
 		<%
 			/*
			String name = request.getParameter("name");
			if(name == "null")
				name = "";
			String password = request.getParameter("password");
			if(password == "null")
				password = "";
			*/
			
			request.setCharacterEncoding("utf-8");
		 	String name = request.getParameter("name");
			String password = request.getParameter("password");
			if(name == null)
				name = "";
			if(password == null)
				password = "";
			
			boolean a = isSuccess.isUserName(name);
				
			boolean b = isSuccess.isPassword(password);
		%>
		-->
		
		<jsp:useBean id = "user" class = "com.wgh.bean.isSuccess">
		 			<jsp:setProperty name = "user" property = "*"/>
		</jsp:useBean>
		
 	
	</head>
	
	<body>
		   <!-- 方式1:通过request获取表单数据 -->
		   <!--  
			<div>
				<b>用户名:</b>
			 	<%=name %>
			 	<b>密码:</b>
			 	<%=password %>
		 	</div>
		 	--> 
		 	
		 	<!-- 方式2:通过值javabean获得表单中的数据 -->		
	 		<div>
	 			<b>用户名:</b>
	 				<jsp:getProperty name = "user" property = "name"/>
	 			<b>密   码:</b>
	 				<jsp:getProperty name = "user" property = "password"/>
			</div>		 			
		 	
	</body>
</html>