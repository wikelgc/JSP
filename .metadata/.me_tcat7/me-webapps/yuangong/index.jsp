<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.sql.*"%>
<html>
<head><title>jsp�г�emp������</title></head>
<body>
  <%
    request.setCharacterEncoding("GBK");
     %>
    <center><h1>Ա������</h1></center>
<%!
	public static final String DBDRIVER = "org.gjt.mm.mysql.Driver" ;
	public static final String DBURL = "jdbc:mysql://localhost:3306/music" ;
	public static final String DBUSER = "root" ;
	public static final String DBPASS = "root" ;
%>
<%
	Connection conn = null ;
	PreparedStatement pstmt = null ;
	ResultSet rs = null ;
%>
<%
	try{
		Class.forName(DBDRIVER) ;
		conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
		String sql = "SELECT empno,ename,job,sal,hiredate FROM emp" ;
		pstmt = conn.prepareStatement(sql) ;
		rs = pstmt.executeQuery() ;
%>
<center>
 <form  action="findEmp.jsp"  method="post">
   ������Ҫ��ѯ�Ĺ�Ա���֣�<input type="text" name="empid">
   <input type="submit" value="��ѯ" ></form> 
   

<table border="1" width="80%">
	<tr>
		<td>��Ա���</td>
		<td>��Ա����</td>
		<td>��Ա����</td>
		<td>��Ա����</td>
		<td>��Ӷ����</td>
		<td colspan="6">����</td>
	</tr>
<%
	while(rs.next()){
		String empno = rs.getString(1) ;
		String ename = rs.getString(2) ;
		String job = rs.getString(3) ;
		float sal = rs.getFloat(4) ;
		java.util.Date date = rs.getDate(5) ;
%>
	<tr>
		<td><%=empno%></td>
		<td><%=ename%></td>
		<td><%=job%></td>
		<td><%=sal%></td>
		<td><%=date%></td>
		<td><a href="emp_update.jsp?empno=<%=empno%>">�޸�</a>
		<a href="emp_delete.jsp?empno=<%=empno%>">ɾ��</a></td>
	</tr>	
		

<%
	}
%>
</table>
</center>

<%
}catch(Exception e)	{
	System.out.println(e) ;
}finally{
	rs.close() ;
	pstmt.close() ;
	conn.close() ;
}
%>

<center><a href="emp_insert.jsp">��Ա����</a></center>



</body>
</html>