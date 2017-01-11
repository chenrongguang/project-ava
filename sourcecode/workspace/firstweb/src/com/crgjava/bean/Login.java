package com.crgjava.bean;

public class Login {

	private String userName;
	private String password;

	/**
	 * 构造方法
	 */
	public Login() {

	}

	//get时需要处理中文乱码问题
	public String getUserName() {
		return this.toUTF(userName);
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
		
	}

	private String toUTF(String str) {
		try {
			byte b[]=str.getBytes("ISO-8859-1");
			String ret= new String(b, "UTF-8");
			return ret;
		} catch (Exception e) {
			return str;
		}
	}

}
