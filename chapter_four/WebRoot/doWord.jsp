
<%@page contentType="text/html; charset=UTF-8" language="java"%>
<%@page import="com.wgh.bean.MyTools" %>
<html>
	<head>
			<%  /*
				request.setCharacterEncoding("utf-8");
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				if(title == null)
					title = "";
				if(content == null)
					content = "";
				
				title = title.replace("<", "&lt");
				title = title.replace(">", "&gt");
				content = content.replace("<", "&lt");
				content = content.replace(">","&gt");
				*/

				request.setCharacterEncoding("utf-8");
			 	String title = request.getParameter("title");
				String content = request.getParameter("content");
				if(title == null)
					title = "";
				if(content == null)
					content = "";
				
				title = MyTools.change(title);
				content = MyTools.change(content);
				
				
				
				
			 %> 
	</head>
	
	<body>
		标题：<%=title %><br>
		内容：<%=content %><br>	
	</body>

</html>