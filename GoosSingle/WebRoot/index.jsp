<%@
	page  contentType="text/html; charset=utf-8"  
	import = "java.util.ArrayList"
	import = "com.yxq.valuebean.GoodsSingle"
%>

<%!
	static ArrayList goodsList = new ArrayList();
	static{
		String names[] = {"apple","banana","pear","tangerine"};
		float prices[] = {2.8f,3.1f,2.5f,2.3f};
		for(int i=0;i<4;i++){
			//定义一个goodsingle类的对象来封装商品信息
			GoodsSingle single = new GoodsSingle();
			single.setName(names[i]);
			single.setPrice(prices[i]);
			single.setNum(1);
			goodsList.add(i,single);
		}
	}
%>

<%
	session.setAttribute("goodslist", goodsList); //保存商品列表到session中  -- save Product list in the session 
	response.sendRedirect("show.jsp");//跳转到show.jsp页面显示信息
 %>
