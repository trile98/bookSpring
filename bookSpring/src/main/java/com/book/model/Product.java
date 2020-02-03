package com.book.model;

import java.math.BigDecimal;
import java.math.BigInteger;

public class Product {
	private int ID;
	private String Title;
	private String ImageLink;

	private String PublishDate;
	private String Cover;
	private String Author;
	private int Price;
	private String Manufacturer;
	private String Publisher;
	private String Introduction;
	private String SKU;
	private int count;

	

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getImageLink() {
		return ImageLink;
	}

	public void setImageLink(String imageLink) {
		ImageLink = imageLink;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public String getPublishDate() {
		return PublishDate;
	}

	public void setPublishDate(String publishDate) {
		PublishDate = publishDate;
	}

	public String getCover() {
		return Cover;
	}

	public void setCover(String cover) {
		Cover = cover;
	}

	public String getAuthor() {
		return Author;
	}

	public void setAuthor(String author) {
		Author = author;
	}

	public String getManufacturer() {
		return Manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		Manufacturer = manufacturer;
	}

	public String getPublisher() {
		return Publisher;
	}

	public void setPublisher(String publisher) {
		Publisher = publisher;
	}

	public String getIntroduction() {
		return Introduction;
	}

	public void setIntroduction(String introduction) {
		Introduction = introduction;
	}

	public String getSKU() {
		return SKU;
	}

	public void setSKU(String sKU) {
		SKU = sKU;
	}
}
