<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@page import="cn.mldn.lxh.dao.impl.*,cn.mldn.lxh.vo.*,cn.mldn.lxh.dao.*" %>
<%@page  import="java.util.*"%>
<%@page  import="java.text.*"%>
<html>
  <head>
    <title>emp_list.jsp</title>
    <%request.setCharacterEncoding("GBK"); %> 
  </head>
  
  <body>
  <h1>ɾ������</h1>
 
  <%
  try{
     String empno=request.getParameter("empno");
     System.out.println(empno);
     if(empno==null){
         empno="";
      }
       IEmpDAO  EDAO= new EmpDAOImpl();
       boolean a = EDAO.doRemove(empno);
       
       if(a == true )
       		%>ɾ���ɹ���<% 
       else %>ɾ��ʧ��<% 
       
  %>
   

  <%
  }catch(Exception e){
  
  e.printStackTrace();
  }
   %>
   <a href="index.jsp?">������ҳ</a>
  </body>
</html>