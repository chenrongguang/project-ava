package com.crgjava.bean;
import java.lang.String;

public class TestBean {
	
	public  void   test(){
		System.out.println("这是第一个web项目！");
	}
	
	public String testStr(){
		//System.out.println("这是第一个web项目！");
		String str = new String("Hello world");
		return str;
	}
	
	public int rtint(){
		
		return 2;
	}

}
