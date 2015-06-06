  <%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.sql.*"%>
<html>
<head><title>jsp列出emp表数据</title></head>
<body>
<%
    request.setCharacterEncoding("GBK");
%>
    <h1>员工管理</h1>
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
%>


<%
try{
	Class.forName(DBDRIVER);
	conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
	String sql = "SELECT * FROM emp" ;
	pstmt = conn.prepareStatement(sql) ;
	rs = pstmt.executeQuery() ;
%>
 <form  action="findEmp.jsp"  method="post">
   请输入要查询的雇员名字：<input type="text" name="ename">
  <input type="submit" value="查询" ></form> 

   

<table border="1" >
	<tr>
		<td>雇员编号</td>
		<td>雇员姓名</td>
		<td>雇员工作</td>
		<td>雇员工资</td>
		<td>雇佣日期</td>
		<td colspan="6">操作</td>
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
		<td><a href="emp_update.jsp?update_empno=<%=empno%>">修改</a>
		<a href="emp_delete.jsp?delete_empno=<%=empno%>">删除</a></td>
	</tr>	
<%
	}
%>


</table>
<%
}catch(Exception e)	{
	System.out.println(e) ;
}finally{
	//rs.close() ;
	//pstmt.close() ;
	conn.close() ;
}
%>
<a href="emp_insert.jsp">雇员添加</a>

</body>
</html>