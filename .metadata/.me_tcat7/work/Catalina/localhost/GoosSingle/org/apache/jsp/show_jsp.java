/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.30
 * Generated at: 2015-06-02 06:24:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import com.yxq.valuebean.GoodsSingle;

public final class show_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("  \r\n");
      out.write("\r\n");
      out.write("\r\n");
 ArrayList goodslist = (ArrayList)session.getAttribute("goodslist"); 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<table border = \"1\" width = \"450\" rules = \"none\" cellspacing = \"0\" cellpadding = \"0\">\r\n");
      out.write("\t\t\t<tr height = \"50\" >\r\n");
      out.write("\t\t\t\t<td colspan = \"3\" align = \"center\">提供商品如下</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<tr align = \"center\" height = \"30\" bgcolor = \"lightgrey\">\r\n");
      out.write("\t\t\t\t<td>名称</td>\r\n");
      out.write("\t\t\t\t<td>价格(元/斤)</td>\r\n");
      out.write("\t\t\t\t<td>购买</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t");

				if(goodslist == null || goodslist.size() == 0){
			 
      out.write("\r\n");
      out.write("\t\t\t<tr height = \"100\">\r\n");
      out.write("\t\t\t\t<td colspan = \"3\" align = \"center\">没有商品显示！</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t");

				}
				else{
				for(int i=0;i<goodslist.size();i++){
				GoodsSingle single = (GoodsSingle)goodslist.get(i);
			 
      out.write("\t\r\n");
      out.write("\t\t \t<tr height = \"50\" align = \"center\">\r\n");
      out.write("\t\t\t\t<td>");
      out.print(single.getName());
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(single.getPrice() );
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td><a href = \"docar.jsp? &action=buy&id=");
      out.print(i);
      out.write("\">购买</a></td>\r\n");
      out.write("\t\t\t</tr>\t\r\n");
      out.write("\t\t\t");

					}
				}
			 
      out.write("\r\n");
      out.write("\t\t\t \r\n");
      out.write("\t\t\t <tr height = \"50\">\r\n");
      out.write("\t\t\t \t<td align = \"center\" colspan=\"3\">\r\n");
      out.write("\t\t\t \t\t<a href = \"shopCar.jsp\">查看购物车</a>\r\n");
      out.write("\t\t\t \t</td>\r\n");
      out.write("\t\t\t </tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</body>\r\n");
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
