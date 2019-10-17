package com.xx.bean;

public class Milktea {

	private Integer id;
	private String name;
	private String type;
	private String price;
	private String num;

	public Milktea() {
	}

	public Milktea(Integer id, String name, String type, String price, String num) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.price = price;
		this.num = num;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}
	
	

}