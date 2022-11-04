package com.petmily.admin.dto;

import java.sql.Timestamp;

public class chooseDTO {

	int choid;
	Timestamp chodate;
	int pet_petid;
	int petspec_psid;
	
	public chooseDTO() {
		// TODO Auto-generated constructor stub
	}

	public chooseDTO(int choid, Timestamp chodate, int pet_petid, int petspec_psid) {
		super();
		this.choid = choid;
		this.chodate = chodate;
		this.pet_petid = pet_petid;
		this.petspec_psid = petspec_psid;
	}

	public int getChoid() {
		return choid;
	}

	public void setChoid(int choid) {
		this.choid = choid;
	}

	public Timestamp getChodate() {
		return chodate;
	}

	public void setChodate(Timestamp chodate) {
		this.chodate = chodate;
	}

	public int getPet_petid() {
		return pet_petid;
	}

	public void setPet_petid(int pet_petid) {
		this.pet_petid = pet_petid;
	}

	public int getPetspec_psid() {
		return petspec_psid;
	}

	public void setPetspec_psid(int petspec_psid) {
		this.petspec_psid = petspec_psid;
	}
	
	
}
