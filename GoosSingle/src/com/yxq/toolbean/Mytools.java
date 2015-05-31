package com.yxq.toolbean;

import java.io.UnsupportedEncodingException;

//��������-javabean:����ʵ�ֽ�string ����������ת��ΪInt���������ͺͽ���������������
public class Mytools {
	//��stringװ��ΪInternet
	public static int strToint(String str){
		int i=0;
		if(str == null || str.equals(""))
			str = "0";
		try{
			i = Integer.parseInt(str);//��strǿ��ת��ΪInt����
		}catch(NumberFormatException e){
			i = 0;
			e.printStackTrace();
		}
		return i;
	}
	//����������������
	public static String toChinese(String str){
		if(str == null)
			str = "";
		try{
			str = new String(str.getBytes("utf-8"),"utf-8"); //
		}catch(UnsupportedEncodingException e){
			str = "";
			e.printStackTrace();
		}
		return str;
	}

}
