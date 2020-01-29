package com.book.model;

public class OrderDetail {
	private int ID;
	private int OrderId;
	private int ProductId; 
	private int Quantity;

	private int[] chosenProduct;
	
	public int getProductId() {
		return ProductId;
	}
	public void setProductId(int productId) {
		ProductId = productId;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getOrderId() {
		return OrderId;
	}
	public void setOrderId(int orderId) {
		OrderId = orderId;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public int[] getChosenProduct() {
		return chosenProduct;
	}
	public void setChosenProduct(int[] chosenProduct) {
		this.chosenProduct = chosenProduct;
	}
}
