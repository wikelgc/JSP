/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.30
 * Generated at: 2015-06-06 05:42:50 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class findEmp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


	public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
	public static final String DBURL = "jdbc:mysql://localhost:3306/music" ;
	public static final String DBUSER = "root" ;
	public static final String DBPASS = "root" ;
	


	Connection conn = null ;
	PreparedStatement pstmt = null ;
	ResultSet rs = null ;

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=GBK");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head><title>jsp列出emp表数据</title></head>\r\n");
      out.write("<body>\r\n");

    request.setCharacterEncoding("GBK");
    String find_ename = request.getParameter("ename");

      out.write("\r\n");
      out.write("    <h1>员工查找界面</h1>\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\r\n");

try{
	Class.forName(DBDRIVER);
	conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
	String sql = "SELECT * FROM emp where ename ='"+find_ename+"'";
	pstmt = conn.prepareStatement(sql) ;
	rs = pstmt.executeQuery() ;

      out.write("\r\n");
      out.write(" <form  action=\"findEmp.jsp\"  method=\"post\">\r\n");
      out.write("   请输入要查询的雇员名字：<input type=\"text\" name=\"empid\">\r\n");
      out.write("  <input type=\"submit\" value=\"查询\" ></form> \r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("<table border=\"1\" >\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>雇员编号</td>\r\n");
      out.write("\t\t<td>雇员姓名</td>\r\n");
      out.write("\t\t<td>雇员工作</td>\r\n");
      out.write("\t\t<td>雇员工资</td>\r\n");
      out.write("\t\t<td>雇佣日期</td>\r\n");
      out.write("\t\t<td colspan=\"6\">操作</td>\r\n");
      out.write("\t</tr>\r\n");

	while(rs.next()){
		String empno = rs.getString(1) ;
		String ename = rs.getString(2) ;
		String job = rs.getString(3) ;
		float sal = rs.getFloat(4) ;
		java.util.Date date = rs.getDate(5) ;

      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>");
      out.print(empno);
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print(ename);
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print(job);
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print(sal);
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print(date);
      out.write("</td>\r\n");
      out.write("\t\t<td><a href=\"emp_update.jsp?empno=");
      out.print(empno);
      out.write("\">修改</a>\r\n");
      out.write("\t\t<a href=\"emp_delete.jsp?delete_empno=");
      out.print(empno);
      out.write("\">删除</a></td>\r\n");
      out.write("\t</tr>\t\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");

	}

      out.write("\r\n");
      out.write("</table>\r\n");

}catch(Exception e)	{
	System.out.println(e) ;
}finally{
	//rs.close() ;
	//pstmt.close() ;
	conn.close() ;
}

      out.write("\r\n");
      out.write("<a href=\"index.jsp\">返回主页</a>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
