package com.onlineflowershop.model;

import java.util.Objects;

public class Product {
	
	private String flowerName;
	private String flowerDescription;
	private String color;
	private double retailPrice;
	private String catName;
	
	
	
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String flowerName, String flowerDescription, String color, double retailPrice, String catName) {
		super();
		this.flowerName = flowerName;
		this.flowerDescription = flowerDescription;
		this.color = color;
		this.retailPrice = retailPrice;
		this.catName = catName;
	}
	public String getFlowerName() {
		return flowerName;
	}
	public void setFlowerName(String flowerName) {
		this.flowerName = flowerName;
	}
	public String getFlowerDescription() {
		return flowerDescription;
	}
	public void setFlowerDescription(String flowerDescription) {
		this.flowerDescription = flowerDescription;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public double getRetailPrice() {
		return retailPrice;
	}
	public void setRetailPrice(double retailPrice) {
		this.retailPrice = retailPrice;
	}
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	@Override
	public String toString() {
		return "Product [flowerName=" + flowerName + ", flowerDescription=" + flowerDescription + ", color=" + color
				+ ", retailPrice=" + retailPrice + ", catName=" + catName + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(catName, color, flowerDescription, flowerName, retailPrice);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return Objects.equals(catName, other.catName) && Objects.equals(color, other.color)
				&& Objects.equals(flowerDescription, other.flowerDescription)
				&& Objects.equals(flowerName, other.flowerName)
				&& Double.doubleToLongBits(retailPrice) == Double.doubleToLongBits(other.retailPrice);
	}
	
	
	

}
