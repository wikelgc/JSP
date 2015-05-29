package com.wgh.bean;

public class MyTools {
	public static String change(String str){
		str = str.replace("<", "&lt;");
		str = str.replace(">", "&gt;");
		return str;
	}

}
