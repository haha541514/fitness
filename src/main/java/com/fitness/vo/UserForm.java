package com.fitness.vo;

public class UserForm {
	/*
	 * 表单对应的类定义如下：（当然，该类中还可以包含其他的字段，
	 * 但必须包含表单中的所有input中的name值，并为其生成getter 与setter方法）
	 * */
	private String username;
	private String userpssword;
	private String user_qq_number;

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpssword() {
		return userpssword;
	}
	public void setUserpssword(String userpssword) {
		this.userpssword = userpssword;
	}
	public String getUser_qq_number() {
		return user_qq_number;
	}
	public void setUser_qq_number(String user_qq_number) {
		this.user_qq_number = user_qq_number;
	}
	
	
	
	
	
}
