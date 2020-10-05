package com.LetsResell.common.member.vo;

public class Filter {

	private String category;
	private String brand;
	private String color;
	private int price;
	private String order;
	
	public Filter() {}

	public Filter(String category, String brand, String color, int price, String order) {
		super();
		this.category = category;
		this.brand = brand;
		this.color = color;
		this.price = price;
		this.order = order;
	}

	public Filter(String category, String brand, String color, int price) {
		super();
		this.category = category;
		this.brand = brand;
		this.color = color;
		this.price = price;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	@Override
	public String toString() {
		return "Filter [category=" + category + ", brand=" + brand + ", color=" + color + ", price=" + price
				+ ", order=" + order + "]";
	}
}
