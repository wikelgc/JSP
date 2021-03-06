package com.yxq.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yxq.toolbean.MyTools;
import com.yxq.valuebeen.WordSingle;

public class WordServlet extends HttpServlet{
		protected void doGet(HttpServletRequest request,HttpServletResponse response)
	    throws ServletException,IOException {
			doPost(request, response);
		
	}
		protected void doPost(HttpServletRequest request,HttpServletResponse response)
	    throws ServletException,IOException{
	    	//获取表单中字符内容并进行解码
	    	String author = MyTools.toChinese(request.getParameter("name"));
	    	System.out.println("author");
	    	String title  = MyTools.toChinese(request.getParameter("text"));
	    	System.out.println("title");
	    	String content = MyTools.toChinese(request.getParameter("message"));
	    	System.out.println("content");
	    	//获取当前的时间并进行格式化
	    	String today = MyTools.changeTime(new Date());
	    	
	    	//创建值JavaBean对象用来封装获取的信息
	    	WordSingle single = new WordSingle();
	    	single.setAuthor(MyTools.changeHTML(author));
	    	single.setTitle(MyTools.changeHTML(title));
	    	single.setContent(content);
	    	single.setTime(today);
	    	
	    	//获取session对象
	    	HttpSession session = request.getSession();
	    	//通过对象获取应用上下文
	    	ServletContext scx = session.getServletContext();
	    	//获取应用上下文中的集合
	    	ArrayList wordlist = (ArrayList)scx.getAttribute("wordlist");
	    	if(wordlist == null){
	    		wordlist = new ArrayList();
	    	}
	    	//将值JavaBean存储到集合对象中去
	    	wordlist.add(single);
	    	//将集合对象保存到应用中去
	    	scx.setAttribute("wordlist", wordlist);
	    	response.sendRedirect("show.jsp");	
	    }
	

}
