<%@page contentType="text/html; charset=utf-8"%> 
<%@page import = "java.util.ArrayList" %>
<%@page import = "com.yxq.valuebean.GoodsSingle"%>	
<%@page import = "com.yxq.toolbean.Mytools"%>

<jsp:useBean id = "myCar" class = "com.yxq.toolbean.shopCar"  scope = "session"/>
<%

	String actions = request.getParameter("action");
	
	if(actions == null){
		System.out.println(actions);
		actions ="";
	}
	if(actions.equals("buy")){
		System.out.println("buy");
	    ArrayList goodslist = (ArrayList)session.getAttribute("goodslist");
		int id = Mytools.strToint(request.getParameter("id"));
		GoodsSingle single = (GoodsSingle)goodslist.get(id);
		myCar.addIten(single);
		response.sendRedirect("show.jsp");	
	}	
	else if(actions.equals("remove")){
		System.out.println("remove");
		String name = request.getParameter("name");
		myCar.removeTtem(name);
		response.sendRedirect("shopCar.jsp");
		
	}
	else if(actions.equals("clear")){
		System.out.println("clear");
		myCar.clearCar();	
		response.sendRedirect("shopCar.jsp");
		
	}
	else{
		System.out.println(actions);
		response.sendRedirect("show.jsp");
		
	}
 %>