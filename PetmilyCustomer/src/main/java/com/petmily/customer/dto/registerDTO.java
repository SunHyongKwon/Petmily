package com.petmily.customer.dto;

import java.sql.Timestamp;

public class registerDTO {

	int regid;
	Timestamp reginitdate;
	Timestamp regdeletedate;
	Timestamp regupdatedate;
	int pet_petid;
	String user_uid;
	
	public registerDTO() {
		// TODO Auto-generated constructor stub
	}

	public registerDTO(int regid, Timestamp reginitdate, Timestamp regdeletedate, Timestamp regupdatedate,
			int pet_petid, String user_uid) {
		super();
		this.regid = regid;
		this.reginitdate = reginitdate;
		this.regdeletedate = regdeletedate;
		this.regupdatedate = regupdatedate;
		this.pet_petid = pet_petid;
		this.user_uid = user_uid;
	}

	public int getRegid() {
		return regid;
	}

	public void setRegid(int regid) {
		this.regid = regid;
	}

	public Timestamp getReginitdate() {
		return reginitdate;
	}

	public void setReginitdate(Timestamp reginitdate) {
		this.reginitdate = reginitdate;
	}

	public Timestamp getRegdeletedate() {
		return regdeletedate;
	}

	public void setRegdeletedate(Timestamp regdeletedate) {
		this.regdeletedate = regdeletedate;
	}

	public Timestamp getRegupdatedate() {
		return regupdatedate;
	}

	public void setRegupdatedate(Timestamp regupdatedate) {
		this.regupdatedate = regupdatedate;
	}

	public int getPet_petid() {
		return pet_petid;
	}

	public void setPet_petid(int pet_petid) {
		this.pet_petid = pet_petid;
	}

	public String getUser_uid() {
		return user_uid;
	}

	public void setUser_uid(String user_uid) {
		this.user_uid = user_uid;
	}
	

}
