<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@page import = "java.text.*"  %>

<!-- 获取时间的函数 -->
<%
	Date nowday = new Date();   //实例化对象，获取当前时间
	int hour = nowday.getHours();	//获取日期中的小时
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//定义日期格式化对象
	String time = format.format(nowday);//将指定日期格式化""
%>
<!-- 获取累计次数的函数 -->
<%!
	int num = 0;
	synchronized void add(){
		num++;
	}
 %>
 
<!-- add() -->
<%
	add();
%>
 
 <html>
 	<head>
 		<title>
 			第一个JSP应用
 		</title>
	</head>
	<body>
		<center>
			<table border = "1" width = "300">
			
				<tr height = "30">
					<td align = "center">
						温馨提示!
					</td>
				</tr>
				
				<tr height = "80">
					<td align = "center">
						现在的时间为:<%=time %>
					</td>
				</tr>
				
				<tr height = "80">
					<td align = "center">
					<!--以下为嵌入到HTML中的java代码，用来生产动态的内容-->    
						<%
							if(hour>=24 && hour < 5)
								out.print("现在是凌晨！，时间还早，再睡会吧！");
							else if(hour>5 &&hour<=10)
								out.print("早上好!");
							else if(hour>10 && hour <13)
								out.print("午休时间！");
							else if(hour>=13 && hour <18)
								out.print("下午努力工作吧");
							else if(hour >=18 && hour <21)
								out.print("晚上好");
							else if(hour >=21 && hour <24)
								out.print("注意休息，晚安!");
					 	%>
				 	</td>
				 </tr>
			</table> 
		</center>
				 <tr height = "20">
				 	<td align = "center">
				 		 您是第<%=num %>位访问的游客！
				 	</td>
				 </tr>
			
		</body>
	</title>
</html>					 
				
				