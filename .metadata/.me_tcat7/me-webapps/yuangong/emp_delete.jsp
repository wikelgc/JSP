<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.sql.*"%>
<html>
<head><title>jsp�г�emp������</title></head>
<body>
<%
    request.setCharacterEncoding("GBK");
    String delete_pno = request.getParameter("delete_empno");
    out.println(delete_pno);
%>
    <h1>ɾ���ɹ�</h1>
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
	String sql = "delete  FROM emp where empno ='"+delete_pno+"'";
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