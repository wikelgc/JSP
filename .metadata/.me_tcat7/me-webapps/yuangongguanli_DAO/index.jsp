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
  <center> <h1>员工管理</h1>
  <form action="index.jsp" method="post">
  请输入查询关键字<input type="text" name="kw">
  <input type="submit" value="查询">
  </form>
 
  <%
  try{
     String keyWord=request.getParameter("kw");
     if(keyWord==null){
         keyWord="";
      }
       IEmpDAO  EDAO= new EmpDAOImpl();
      List<Emp> all=EDAO.findAll(keyWord);
      Iterator<Emp> iter=all.iterator();
     %>
  <table border="1" width="80%">
  <tr>
  <td>雇员编号</td>
  <td>雇员姓名</td>
  <td>雇员工作</td>
  <td>雇员工资</td>
  <td>雇员日期</td>
  <td colspan="6">操 作</td>
  </tr>
 
  <%
  while(iter.hasNext()){
      Emp emp=iter.next();
   %>
   <tr>
   <td><%=emp.getEmpno() %></td>
   <td><%=emp.getEname() %></td>
   <td><%=emp.getJob() %></td>
   <td><%=emp.getSal() %></td>
   <td><%=emp.getHiredate() %></td>
   <td><a href="emp_update.jsp?empno=<%=emp.getEmpno()%>">修改</a>
		<a href="emp_delete.jsp?empno=<%=emp.getEmpno()%>">删除</a></td>
   </tr>
   <%
   }
    %>
    <a href="emp_insert.jsp">雇员添加</a>
   </table>
  </center>
  <%
  }catch(Exception e){
  
  e.printStackTrace();
  }
   %>
  </body>
</html>
