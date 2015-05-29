package com.yxq.valuebean;

//创建封装商品信息的值javabean-goodsSingle。在java中定义name,price,和num属性。分别来保存商品的信息名称，价格和购买数量
public class GoodsSingle {
	public String name;
	public float price;
	public int num;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	

}
