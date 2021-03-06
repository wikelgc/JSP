package com.yxq.toolbean;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

/*
 * Create changHTML method and changeTime() method
 */

public class MyTools {
	/*
	 * @function Html language belonging to convert a string of special characters
	 * @parameter source for the string to be converted
	 * @return String type
	 */
	public static String changeHTML(String source){
		String changeStr = "";
		changeStr = source.replace("&", "&amp");
		changeStr = source.replace(" ", "&nbsp");
		changeStr = source.replace("<", "&lt");
		changeStr = source.replace(">", "&gt");
		changeStr = source.replace("\r\n", "<br>");
		return changeStr;
	}
	
	/*
	 * function The data type is converted to Specific type
	 * @parameter date to converted Date
	 * return String type
	 */
	public static String changeTime(Date date){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
		return format.format(date);
	}
	
	/*
	 * @function Chinese garbage problem solving
	 * @parametter value is the string to be converted
	 * @return String type
	 */
	public static String toChinese(String str){
		if(str==null){
			str = "";
		}
		try{
			//通过String类的构造方法，将指定的字符串转换为"gb2312"
			str = new String(str.getBytes("iso-8859-1"),"utf-8");
			
		}catch (UnsupportedEncodingException e){
			str = "";
			e.printStackTrace();
		}
		return str;
	}

}
