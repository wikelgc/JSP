<%@page import="java.util.Date"%>
<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@page import="cn.mldn.lxh.dao.impl.*,cn.mldn.lxh.vo.*,cn.mldn.lxh.dao.*" %>
<html>
<head><title>jsp列出emp表数据</title></head>
<body>
<%
    request.setCharacterEncoding("GBK");
%>
    <h1>员工修改界面</h1>

<%!
	String empno_1;
	String ename_1;
	String job_1;
	float sal_1;
	Date date_1;
	int m=1000;
%>	

<%
  try{
     String empno=request.getParameter("empno");
     System.out.println(empno);
     if(empno==null){
         empno="";
      }
      IEmpDAO  EDAO= new EmpDAOImpl();
      Emp emp=EDAO.findById(empno);
      
      empno_1 = emp.getEmpno();
      System.out.println("--"+empno_1);
      ename_1 = emp.getEname();
       System.out.println("--"+ename_1);
      job_1   = emp.getJob();
       System.out.println("--"+job_1);
      date_1  = emp.getHiredate();
       System.out.println("--"+date_1);
      sal_1   = emp.getSal();
       System.out.println("--"+sal_1);
  }catch(Exception e){
  
  e.printStackTrace();
  }
%>



<form  action="emp_update_do.jsp"  method="post">
	<table border="1" >
	
	<tr>
		<td>雇员编号</td> <td><input type = "text" value = <%=empno_1 %> name="empno"></td>
	</tr>
	
	<tr>
		<td>雇员姓名</td> <td><input type = "text" value = <%=ename_1 %> name="ename"></td>
	</tr>
	
	<tr>
		<td>雇员工作</td> <td><input type = "text" value = <%=job_1 %>   name="job"></td>
	</tr>
	
	<tr>
		<td>雇员工资</td> <td><input type = "text" value = <%=sal_1 %> name="sal"></td>
	</tr>
	
	<tr>
		<td>雇佣日期</td> <td><input type = "text" value = <%=date_1 %> name="date"></td>
	</tr>
	<tr>
	
	</tr>
</table>
	<input type="submit" value="确定">
	<input type="reset" value="重置">
</form>	

<a href="index.jsp">返回主页</a>
</body>
</html>