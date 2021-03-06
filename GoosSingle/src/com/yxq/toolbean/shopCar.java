package com.yxq.toolbean;

import java.util.ArrayList;

import com.yxq.valuebean.GoodsSingle;

public class shopCar {
	//定义动态数组类型的购物车
	private ArrayList buyList = new ArrayList();
	public ArrayList getBuylist(){
		return buyList;
	}
	
	/**
	 * @功能 向购物车中添加商品
	 * @参数 single为goodsingls类对象，封装了要添加的商品信息
	 */
	public void addIten(GoodsSingle single){
		if(single != null){
			if(buyList.size() == 0){
				GoodsSingle temp = new GoodsSingle();
				temp.setName(single.getName());
				temp.setPrice(single.getPrice());
				temp.setNum(single.getNum());
				
				buyList.add(temp);                                                                                         
			}
			else{
				int i = 0;
				//遍历buylist集合对象，判断该集合是否已经存在当前要添加的商品
				for(i=0;i<buyList.size();i++){
					//获取buylist集合中的当前元素
					GoodsSingle temp = (GoodsSingle)buyList.get(i);
					if(temp.getName().equals(single.getName())){
						temp.setNum(temp.getNum()+1);
						break;
					}
				}
				if(i>=buyList.size()){
					GoodsSingle temp = new GoodsSingle();
					temp.setName(single.getName());
					temp.setPrice(single.getPrice());
					temp.setNum(single.getNum());
					
					buyList.add(temp);
				}
			}
		}
	}
	
	
	/**
	 * @功能 从购物车中移除指定商品的类型
	 * @param name represents the product name
	 */
	public void removeTtem(String name){
		for(int i=0;i<buyList.size();i++){
			GoodsSingle temp = (GoodsSingle)buyList.get(i);
			if(temp.getName().equals(Mytools.toChinese(name))){
				if(temp.getNum()>1){
					temp.setNum(temp.getNum()-1);
					break;
				}
				else if (temp.getNum() == 1){
					buyList.remove(i);
				}
			}
		}
	}
	
	
	/**
	 * @Function Cleanup cart
	 * 
	 */
	public void clearCar(){
		buyList.clear();
	}
	 
	
	

}
