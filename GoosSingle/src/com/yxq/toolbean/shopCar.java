package com.yxq.valuebean;

import java.util.ArrayList;

public class shopCar {
	//���嶯̬�������͵Ĺ��ﳵ
	private ArrayList buyList = new ArrayList();
	public ArrayList getBuylist(){
		return buyList;
	}
	
	/**
	 * @���� ���ﳵ��������Ʒ
	 * @���� singleΪgoodsingls����󣬷�װ��Ҫ���ӵ���Ʒ��Ϣ
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
				//����buylist���϶����жϸü����Ƿ��Ѿ����ڵ�ǰҪ���ӵ���Ʒ
				for(;i<buyList.size();i++){
					//��ȡbuylist�����еĵ�ǰԪ��
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
	 * @���� �ӹ��ﳵ���Ƴ�ָ����Ʒ������
	 * @param name represents the product name
	 */
	public void removeTtem(String name){
		for(int i=0;i<buyList.size();i++){
			GoodsSingle temp = (GoodsSingle)buyList.get(i);
			if(temp.getName().equals(Mytools.toChinese(name))){
				if(temp.getNum()>1){
					temp.setNum(temp.getNum());
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