<%@ page contentType = "text/html; charset=utf-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "com.yxq.valuebeen.*" %>
<%
	ArrayList wordlist = (ArrayList)application.getAttribute("wordlist");
	if(wordlist == null || wordlist.size() == 0){
		out.print("没有留言显示");
	}
	else{
		for(int i=wordlist.size()-1;i>=0;i--){
			WordSingle single = (WordSingle)wordlist.get(i);
 %>
		 留言者:<%=single.getAuthor()%>
		<p>
		 留言时间:<%=single.getTime()%>
		 <p>
		 留言标题:<%=single.getTitle() %>
		 <p>
		 留言内容:
		 <textarea rows = "7" cols = "30" readonly><%=single.getContent()%></textarea>
		 <a href = "index.html">我要留言</a>
		 <hr width = "100%">
<%
	    }
	}
%>
 <a href = "index.html">我要留言</a>

