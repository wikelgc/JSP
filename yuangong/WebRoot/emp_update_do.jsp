<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.sql.*"%>
<html>
<head><title>jsp�г�emp������</title></head>
<body>
<%
    request.setCharacterEncoding("GBK");
    String empno = request.getParameter("empno");
    out.println(empno);
    String ename = request.getParameter("ename");
    out.println(ename);
    String job = request.getParameter("job");
    out.println(job);
    String sal = request.getParameter("sal");
    out.println(sal);
    String date = request.getParameter("date");
    out.println(date);
%>
    <h1>�޸ĳɹ�</h1>
<%!
	public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
	public static final String DBURL = "jdbc:mysql://localhost:3306/music" ;
	public static final String DBUSER = "root" ;
	public static final String DBPASS = "root" ;
	
%>
<%!
	Connection conn = null ;
	PreparedStatement pstmt = null ;

%>	


<%
try{
	Class.forName(DBDRIVER);
	conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
	String sql = "UPDATE music.emp SET empno='"+empno+"',ename='"+ename+"',job='"+job+"',sal='"+sal+"',hiredate = '"+date+"' WHERE empno='"+empno+"'";
	pstmt = conn.prepareStatement(sql) ;
	int rs = pstmt.executeUpdate();
%>
 <form  action="findEmp.jsp"  method="post">
   ������Ҫ��ѯ�Ĺ�Ա���֣�<input type="text" name="find_ename">
  <input type="submit" value="��ѯ" ></form> 

<%
}catch(Exception e)	{
	System.out.println(e) ;
}finally{
	//rs.close() ;
	//pstmt.close() ;
	conn.close() ;
}
%>
<a href="index.jsp">������ҳ</a>

</body>
</html>