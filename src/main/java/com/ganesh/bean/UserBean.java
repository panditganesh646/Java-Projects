package com.ganesh.bean;

public class UserBean {
	private int userid;
	private String userName;
    private String userPass;
    private String userFirstName;
    private String userLastName;
    private String userMid;
	public UserBean() {
		super();
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserFirstName() {
		return userFirstName;
	}
	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}
	public String getUserLastName() {
		return userLastName;
	}
	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}
	public String getUserMid() {
		return userMid;
	}
	public void setUserMid(String userMid) {
		this.userMid = userMid;
	}
	
}
