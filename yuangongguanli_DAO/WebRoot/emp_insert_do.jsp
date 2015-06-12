<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@page import="cn.mldn.lxh.dao.impl.*,
				cn.mldn.lxh.vo.*,
				cn.mldn.lxh.dao.*" %>
<%@page  import="java.util.*"%>
<%@page  import="java.text.*"%>
<html>
  <head>
    <title>emp_list.jsp</title>
    <%
   request.setCharacterEncoding("GBK");
   
   String empno = request.getParameter("empno");
   if(empno == null) empno = "";
   out.println(empno);
   
   String ename = request.getParameter("ename");
   if(ename == null) ename = "";
   out.println(ename);
   
   String job = request.getParameter("job");
   if(job == null) job = "";
   out.println(job);
   
   float sal = Float.parseFloat(request.getParameter("sal"));
   out.println(sal);
   
   SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");//小写的mm表示的是分钟    
   java.util.Date date=sdf.parse(request.getParameter("date")); 
   out.println(date);  
   
    %>
  </head>
  
  <body>
  <h1>添加管理</h1>
 
  <%
  try{
       Emp emp = new Emp(empno,ename,job,date,sal);
       IEmpDAO  EDAO= new EmpDAOImpl();
       boolean a = EDAO.doCreate(emp);
       
       if(a == true )
       		%>添加成功！<% 
       else %>添加失败<% 
       
  %>
   

  <%
  }catch(Exception e){
  
  e.printStackTrace();
  }
   %>
   <a href="index.jsp?">返回主页</a>
  </body>
</html>
