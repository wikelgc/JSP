<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
  <form action = "addWord" method = "post">
  	留言者:<input type = "text" name = "author" size = "25"><br>
  	留言标题:<input type = "text" name = "title" size = 31><br>
  	留言内容:<input type = "text" name = "message" size = "31" ><br>
  	<input type  = "reset" value = "提交">
  	<input type = "submit" value = "重置">
  	<a href="show.jsp">查看留言</a>
  </form>
  </body>
</html>