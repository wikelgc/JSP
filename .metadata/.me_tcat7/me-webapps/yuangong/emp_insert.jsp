<%@page import="java.util.Date"%>
<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.sql.*"%>
<html>
<head><title>jsp�г�emp������</title></head>
<body>
<%
    request.setCharacterEncoding("GBK");

%>
    <h1>Ա�����ӽ���</h1>

 <form  action="findEmp.jsp"  method="post">
   ������Ҫ��ѯ�Ĺ�Ա���֣�<input type="text" name="empid">
  <input type="submit" value="��ѯ" ></form> 

<form  action="emp_add_do.jsp"  method="post">
	<table border="1" >
	
	<tr>
		<td>��Ա���</td> <td><input type = "text" value = "0001" name="empno"></td>
	</tr>
	
	<tr>
		<td>��Ա����</td> <td><input type = "text" value = "����" name="ename"></td>
	</tr>
	
	<tr>
		<td>��Ա����</td> <td><input type = "text" value = "����"   name="job"></td>
	</tr>
	
	<tr>
		<td>��Ա����</td> <td><input type = "text" value = "10000.0" name="sal"></td>
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