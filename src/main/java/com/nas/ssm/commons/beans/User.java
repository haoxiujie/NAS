package com.nas.ssm.commons.beans;

public class User {
	private Integer id ;
	private String name ;
	private String number ;
	private String  gender ;
	private String card ;
	private String mileage ;
	private String insurance ;
	private String model ;
	private String note ;
	
	public User(String name, String number, String gender, String card, String mileage, String insurance, String model,
			String note) {
		super();
		this.name = name;
		this.number = number;
		this.gender = gender;
		this.card = card;
		this.mileage = mileage;
		this.insurance = insurance;
		this.model = model;
		this.note = note;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public String getMileage() {
		return mileage;
	}
	public void setMileage(String mileage) {
		this.mileage = mileage;
	}
	public String getInsurance() {
		return insurance;
	}
	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
	@Override
	  public String toString() {
		   return "User [id=" + id + ", name=" + name + ", number" + number +", gender" + gender + ",card =" + card + ",mileage =" +mileage  
				   + ",insurance =" +insurance  + ",model =" + model +",note =" +note   + "]";
		  }
	
	
	
}
