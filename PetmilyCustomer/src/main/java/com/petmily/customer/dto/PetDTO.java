package com.petmily.customer.dto;

import java.sql.Timestamp;

public class PetDTO {

	int petid;
	Timestamp petbirthday;
	String petgender;
	
	public PetDTO() {
		// TODO Auto-generated constructor stub
	}

	public PetDTO(int petid, Timestamp petbirthday, String petgender) {
		super();
		this.petid = petid;
		this.petbirthday = petbirthday;
		this.petgender = petgender;
	}

	public int getPetid() {
		return petid;
	}

	public void setPetid(int petid) {
		this.petid = petid;
	}

	public Timestamp getPetbirthday() {
		return petbirthday;
	}

	public void setPetbirthday(Timestamp petbirthday) {
		this.petbirthday = petbirthday;
	}

	public String getPetgender() {
		return petgender;
	}

	public void setPetgender(String petgender) {
		this.petgender = petgender;
	}
	
	
}
