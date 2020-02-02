package com.book.model;

public class User {
	private int ID;
	private String Name;
	private String HomeAddress;
	private String Email;
	private String PhoneNumber;
	private String Username;
	private String Pass;
	private int Auth;
	public User(int iD, String name, String homeAddress, String email, String phoneNumber, String username, String pass,
			int auth) {
		super();
		ID = iD;
		Name = name;
		HomeAddress = homeAddress;
		Email = email;
		PhoneNumber = phoneNumber;
		Username = username;
		Pass = pass;
		Auth = auth;
	}
	public User() {
		super();
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getHomeAddress() {
		return HomeAddress;
	}
	public void setHomeAddress(String homeAddress) {
		HomeAddress = homeAddress;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPass() {
		return Pass;
	}
	public void setPass(String pass) {
		Pass = pass;
	}
	public int getAuth() {
		return Auth;
	}
	public void setAuth(int auth) {
		Auth = auth;
	}
	
}
