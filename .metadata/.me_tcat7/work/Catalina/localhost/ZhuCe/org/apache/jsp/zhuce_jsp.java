/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.30
 * Generated at: 2015-05-31 09:26:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class zhuce_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<html>\t\t\r\n");
      out.write("<head>\t\r\n");
      out.write("\t<title>JavaScript应用正则表达式</title>\r\n");
      out.write("\t<p>雇员信息登入表</p>\r\n");
      out.write("\t<script>\t\t\r\n");
      out.write("\t\tfunction validate(f){\t// 定义函数，此时f就表示myform\r\n");
      out.write("\t\t\tvar value = true;\t// 取得输入的内容\r\n");
      out.write("\t\t\tif(!/^\\d+$/.test(f.userID.value)){\t// 用户编码 --数字\r\n");
      out.write("\t\t\t\talert(\"userID输入格式不正确！\") ;\t\r\n");
      out.write("\t\t\t\tf.userID.focus() ; \t// 让焦点定位到email框\r\n");
      out.write("\t\t\t\tf.userID.select() ;\t// 选择全部内容\r\n");
      out.write("\t\t\t\tvalue = false;\t\t// 返回false，表单不提交\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(!/^\\w+$/.test(f.username.value)){\t// 用户姓名 --非空\r\n");
      out.write("\t\t\t\talert(\"username输入格式不正确！\") ;\t\r\n");
      out.write("\t\t\t\tf.username.focus() ; \t// 让焦点定位到email框\r\n");
      out.write("\t\t\t\tf.username.select() ;\t// 选择全部内容\r\n");
      out.write("\t\t\t\tvalue = false;\t\t// 返回false，表单不提交\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(!/^\\w+$/.test(f.userwork.value)){\t// 用户工作   -- 非空\r\n");
      out.write("\t\t\t\talert(\"userwork输入格式不正确！\") ;\t\r\n");
      out.write("\t\t\t\tf.userwork.focus() ; \t// 让焦点定位到email框\r\n");
      out.write("\t\t\t\tf.userwork.select() ;\t// 选择全部内容\r\n");
      out.write("\t\t\t\tvalue = false;\t\t// 返回false，表单不提交\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(!/^[1-2][0-9][0-9]-[0-1][0-9]-[0-3][0-9]$/.test(f.userdata.value)){\t// 用户日期  --日期格式\r\n");
      out.write("\t\t\t\talert(\"userdata输入格式不正确！\") ;\t\r\n");
      out.write("\t\t\t\tf.userdata.focus() ; \t// 让焦点定位到email框\r\n");
      out.write("\t\t\t\tf.userdata.select() ;\t// 选择全部内容\r\n");
      out.write("\t\t\t\tvalue = false;\t\t// 返回false，表单不提交\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(!/^\\d+{3-6}$/.test(f.salary.value)){\t// 用户工资 --100-100000\r\n");
      out.write("\t\t\t\talert(\"salary输入格式不正确！\") ;\t\r\n");
      out.write("\t\t\t\tf.salary.focus() ; \t// 让焦点定位到email框\r\n");
      out.write("\t\t\t\tf.salary.select() ;\t// 选择全部内容\r\n");
      out.write("\t\t\t\tvalue = false;\t\t// 返回false，表单不提交\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(!/^\\d+{2,4} $/.test(f.bonus.value)){\t// 用户奖金  --必须是数字\r\n");
      out.write("\t\t\t\talert(\"bonus输入格式不正确！\") ;\t\r\n");
      out.write("\t\t\t\tf.bonus.focus() ; \t// 让焦点定位到email框\r\n");
      out.write("\t\t\t\tf.bonus.select() ;\t// 选择全部内容\r\n");
      out.write("\t\t\t\tvalue = false;\t\t// 返回false，表单不提交\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\treturn value;\t\t// 返回true，表单提交\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("</head>\t\r\n");
      out.write("\r\n");
      out.write("<body>\t\t\t\t\t\r\n");
      out.write("\t<form action=\"index.jsp\" method=\"post\" name=\"myform\" onSubmit=\"return validate(this)\">\r\n");
      out.write("\t\t雇员编号:<input type = \"text\" name = \"userID\"><br>\r\n");
      out.write("\t\t雇员姓名:<input type = \"text\" name = \"username\"><br>\r\n");
      out.write("\t\t雇员工作:<input id=\"myCar\" list=\"cars\" name = \"userwork\"/>\r\n");
      out.write("              <datalist id=\"cars\">\r\n");
      out.write("\t               <option value=\"宣传部\">\r\n");
      out.write("\t               <option value=\"销售部\">\r\n");
      out.write("\t               <option value=\"技术部\">\r\n");
      out.write("              </datalist><br>\r\n");
      out.write("\t\t雇员日期:<input type = \"text\" name = \"userdata\"><br>\r\n");
      out.write("\t\t雇员工资:<input type = \"text\" name = \"salary\"><br>\r\n");
      out.write("\t\t雇员奖金:<input type = \"text\" name = \"bonus\"><br>\r\n");
      out.write("\t\t<input type=\"submit\" value=\"提交\">\r\n");
      out.write("\t\t<input type=\"reset\" value=\"重置\">\r\n");
      out.write("\t</form>\t\t\t\t\t\r\n");
      out.write("</body>\t\t\t\t\t\r\n");
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
