<%@page import="com.yxq.toolbean.Mytools"%>
<%@
	page contentType="text/html; charset=utf-8"  
	import = "java.util.ArrayList"
	import = "com.yxq.valuebean.GoodsSingle"
	import = "com.yxq.toolbean.Mytools.java"
%>
<!--annotations:注释，注解 -->
<jsp:useBean id = "myCar" class = "com.yxq.toolbean.ShopCar"  scope = "session"/>

<%
	String action = request.getParameter("actiom");
	if(action == "null")
		action = "";
	if(action == "buy"){
		ArrayList goodslist = (ArrayList)session.getAttribute("goodslist");
		int id = Mytools.strToint(request.getParameter("id"));
		GoodsSingle single = (GoodsSingle)goodslist.get(id);
		myCar.addItem(single);
		response.sendRedirect("show.jsp");
	}	
	else if(action.equals("remove")){
		Stirng name = request.equals("remove");
		myCar.removeItem(name);
		response.sendRedirect("shipcar.jsp");
	}
	else if(action.equals("clear")){
		myCar.clearCar();
		response.sendRedirect("shopcar.jsp");
	}
	else{
		response.sendError("show.jsp");
 %>