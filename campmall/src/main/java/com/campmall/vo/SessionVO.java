package com.campmall.vo;

public class SessionVO {

	int loginresult;
	String email, pwd;
	public int getLoginresult() {
		return loginresult;
	}
	public void setLoginresult(int loginresult) {
		this.loginresult = loginresult;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
