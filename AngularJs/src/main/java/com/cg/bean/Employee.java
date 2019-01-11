package com.cg.bean;



public class Employee {

	private String name;
	
	private int id;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public Employee() {
		super();
	}
	public Employee(String name, int id) {
		super();
		this.name = name;
		this.id = id;
	}
	public void setId(int id) {
		this.id = id;
	}
	

}
