<%@page import="java.util.Date"%>
<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>jsp列出emp表数据</title></head>
<body>
<%
    request.setCharacterEncoding("GBK");
%>
    <h1>员工添加界面</h1>

<%!
	String empno;
	String ename;
	String job;
	float sal;
	Date date;
	int m=1000;
%>	



<form  action="emp_insert_do.jsp"  method="post">
	<table border="1" >
	
	<tr>
		<td>雇员编号</td> <td><input type = "text" value = <%=(m=m+1) %> name="empno"></td>
	</tr>
	
	<tr>
		<td>雇员姓名</td> <td><input type = "text" value = "张三" name="ename"></td>
	</tr>
	
	<tr>
		<td>雇员工作</td> <td><input type = "text" value = "销售"   name="job"></td>
	</tr>
	
	<tr>
		<td>雇员工资</td> <td><input type = "text" value = "12012" name="sal"></td>
	</tr>
	
	<tr>
		<td>雇佣日期</td> <td><input type = "text" value = "2012-12-21" name="date"></td>
	</tr>
	<tr>
	
	</tr>
</table>
	<input type="submit" value="确定">
	<input type="reset" value="重置">
</form>	

<a href="index.jsp">返回主页</a>
</body>
</html>