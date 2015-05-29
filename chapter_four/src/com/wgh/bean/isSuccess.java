package com.wgh.bean;

public class isSuccess {
	public static boolean isUserName (String str){
		if(str.equals("admin"))
			return true;
		else 
			return false;
	}
	public static boolean isPassword (String str){
		if(str.equals("000"))
			return true;
		else 
			return false;
	}
}
