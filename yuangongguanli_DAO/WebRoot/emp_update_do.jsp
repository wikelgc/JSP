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
   
   SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");//Сд��mm��ʾ���Ƿ���    
   java.util.Date date=sdf.parse(request.getParameter("date")); 
   out.println(date);  
   
    %>
  </head>
  
  <body>
  <h1>��ӹ���</h1>
 
  <%
  try{
       Emp emp = new Emp(empno,ename,job,date,sal);
       System.out.println(emp.getEmpno());
	System.out.println(emp.getEname());
	System.out.println(emp.getJob());
	System.out.println(emp.getHiredate());
	System.out.println(emp.getSal());
       IEmpDAO  EDAO= new EmpDAOImpl();
       boolean a = EDAO.doUpdate(emp);
       
       if(a == true )
       		%>�޸ĳɹ���<% 
       else %>�޸�ʧ��<% 
       
  %>
   

  <%
  }catch(Exception e){
  
  e.printStackTrace();
  }
   %>
   <a href="index.jsp?">������ҳ</a>
  </body>
</html>
