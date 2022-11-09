package com.petmily.admin.dto;

import java.sql.Timestamp;

public class PetspecDTO {

	int psid;
	String pstype;
	String psbreeds;
	String pssize;
	String pscontent;
	Timestamp psinitdate;
	Timestamp psdeletedate;
	
	public PetspecDTO() {
		// TODO Auto-generated constructor stub
	}

	public PetspecDTO(int psid, String pstype, String psbreeds, String pssize, String pscontent, Timestamp psinitdate,
			Timestamp psdeletedate) {
		super();
		this.psid = psid;
		this.pstype = pstype;
		this.psbreeds = psbreeds;
		this.pssize = pssize;
		this.pscontent = pscontent;
		this.psinitdate = psinitdate;
		this.psdeletedate = psdeletedate;
	}

	public int getPsid() {
		return psid;
	}

	public void setPsid(int psid) {
		this.psid = psid;
	}

	public String getPstype() {
		return pstype;
	}

	public void setPstype(String pstype) {
		this.pstype = pstype;
	}

	public String getPsbreeds() {
		return psbreeds;
	}

	public void setPsbreeds(String psbreeds) {
		this.psbreeds = psbreeds;
	}

	public String getPssize() {
		return pssize;
	}

	public void setPssize(String pssize) {
		this.pssize = pssize;
	}

	public String getPscontent() {
		return pscontent;
	}

	public void setPscontent(String pscontent) {
		this.pscontent = pscontent;
	}

	public Timestamp getPsinitdate() {
		return psinitdate;
	}

	public void setPsinitdate(Timestamp psinitdate) {
		this.psinitdate = psinitdate;
	}

	public Timestamp getPsdeletedate() {
		return psdeletedate;
	}

	public void setPsdeletedate(Timestamp psdeletedate) {
		this.psdeletedate = psdeletedate;
	}
	
}
