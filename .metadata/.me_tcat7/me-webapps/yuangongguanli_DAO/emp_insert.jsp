<%@page import="java.util.Date"%>
<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>jsp�г�emp������</title></head>
<body>
<%
    request.setCharacterEncoding("GBK");
%>
    <h1>Ա����ӽ���</h1>

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
		<td>��Ա���</td> <td><input type = "text" value = <%=(m=m+1) %> name="empno"></td>
	</tr>
	
	<tr>
		<td>��Ա����</td> <td><input type = "text" value = "����" name="ename"></td>
	</tr>
	
	<tr>
		<td>��Ա����</td> <td><input type = "text" value = "����"   name="job"></td>
	</tr>
	
	<tr>
		<td>��Ա����</td> <td><input type = "text" value = "12012" name="sal"></td>
	</tr>
	
	<tr>
		<td>��Ӷ����</td> <td><input type = "text" value = "2012-12-21" name="date"></td>
	</tr>
	<tr>
	
	</tr>
</table>
	<input type="submit" value="ȷ��">
	<input type="reset" value="����">
</form>	

<a href="index.jsp">������ҳ</a>
</body>
</html>