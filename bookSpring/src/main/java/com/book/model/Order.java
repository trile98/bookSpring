package com.book.model;

import java.sql.Date;

public class Order {
	private int ID;
	private int UserID;
	private Date CreateDate; 
	private long Total;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public long getTotal() {
		return Total;
	}
	public void setTotal(long total) {
		Total = total;
	}
	public Date getCreateDate() {
		return CreateDate;
	}
	public void setCreateDate(Date createDate) {
		CreateDate = createDate;
	}
}
