package com.yxq.toolbean;

import java.io.UnsupportedEncodingException;

//创建工具-javabean:用来实现将string 型数据类型转换为Int型数据类型和解决中文乱码的问题
public class Mytools {
	//把string装换为Internet
	public static int strToint(String str){
		int i=0;
		if(str == null || str.equals(""))
			str = "0";
		try{
			i = Integer.parseInt(str);//把str强制转化为Int类型
		}catch(NumberFormatException e){
			i = 0;
			e.printStackTrace();
		}
		return i;
	}
	//解决中文乱码的问题
	public static String toChinese(String str){
		if(str == null)
			str = "";
		try{
			str = new String(str.getBytes("iso-8859-1"),"gb2312"); //
		}catch(UnsupportedEncodingException e){
			str = "";
			e.printStackTrace();
		}
		return str;
	}

}
