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
  <center> <h1>Ա������</h1>
  <form action="index.jsp" method="post">
  �������ѯ�ؼ���<input type="text" name="kw">
  <input type="submit" value="��ѯ">
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
  <td>��Ա���</td>
  <td>��Ա����</td>
  <td>��Ա����</td>
  <td>��Ա����</td>
  <td>��Ա����</td>
  <td colspan="6">�� ��</td>
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
   <td><a href="emp_update.jsp?empno=<%=emp.getEmpno()%>">�޸�</a>
		<a href="emp_delete.jsp?empno=<%=emp.getEmpno()%>">ɾ��</a></td>
   </tr>
   <%
   }
    %>
    <a href="emp_insert.jsp">��Ա���</a>
   </table>
  </center>
  <%
  }catch(Exception e){
  
  e.printStackTrace();
  }
   %>
  </body>
</html>
