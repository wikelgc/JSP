<%@page import="java.util.Date"%>
<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.sql.*"%>
<html>
<head><title>jsp�г�emp������</title></head>
<body>
<%
    request.setCharacterEncoding("GBK");
    String update_empno = request.getParameter("update_empno");
    //out.println(update_empno);
%>
    <h1>Ա���޸Ľ���</h1>
<%!
	public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
	public static final String DBURL = "jdbc:mysql://localhost:3306/music" ;
	public static final String DBUSER = "root" ;
	public static final String DBPASS = "root" ;
	
%>
<%!
	Connection conn = null ;
	PreparedStatement pstmt = null ;
	ResultSet rs = null ;
	String empno;
	String ename;
	String job;
	float sal;
	Date date;
%>	


<%
try{
	Class.forName(DBDRIVER);
	conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
	String sql = "SELECT * FROM emp where empno ='"+update_empno+"'";
	pstmt = conn.prepareStatement(sql) ;
	rs = pstmt.executeQuery() ;
%>
 <form  action="findEmp.jsp"  method="post">
   ������Ҫ��ѯ�Ĺ�Ա���֣�<input type="text" name="empid">
  <input type="submit" value="��ѯ" ></form> 

<%
	     rs.next();
		 empno = rs.getString(1) ;
		 //out.println(empno);
		 ename = rs.getString(2) ;
		 //out.println(ename);
		 job = rs.getString(3) ;
		 //out.println(job);
		 sal = rs.getFloat(4) ;
		 //out.println(sal);
		 date = rs.getDate(5) ;
		 //out.println(date);
%>


<%
}catch(Exception e)	{
	System.out.println(e) ;
}finally{
	//rs.close() ;
	//pstmt.close() ;
	conn.close() ;
}
%>


<form  action="emp_update_do.jsp"  method="post">
	<table border="1" >
	
	<tr>
		<td>��Ա���</td> <td><input type = "text" value = <%=empno %> name="empno"></td>
	</tr>
	
	<tr>
		<td>��Ա����</td> <td><input type = "text" value = <%=ename %> name="ename"></td>
	</tr>
	
	<tr>
		<td>��Ա����</td> <td><input type = "text" value = <%=job %>   name="job"></td>
	</tr>
	
	<tr>
		<td>��Ա����</td> <td><input type = "text" value = <%=sal %> name="sal"></td>
	</tr>
	
	<tr>
		<td>��Ӷ����</td> <td><input type = "text" value = <%=date %> name="date"></td>
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