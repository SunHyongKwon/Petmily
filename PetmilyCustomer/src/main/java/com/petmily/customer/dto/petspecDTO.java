package com.petmily.customer.dto;

import java.sql.Timestamp;

public class petspecDTO {

	int psid;
	String pstype;
	String psbreeds;
	String pssize;
	String pscontent;
	String psimage;
	Timestamp psinitdate;
	Timestamp psdeletedate;
	
	
	public petspecDTO() {
		// TODO Auto-generated constructor stub
	}

	public petspecDTO(int psid, String pstype, String psbreeds, String pssize, String pscontent, Timestamp psinitdate,
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
	
	// by 은빈  -- 카드 클릭시 list 나오게 하기 위해 만듬
	public petspecDTO(String pstype, String psimage, String psbreeds) {
		super();
		this.pstype = pstype;
		this.psimage = psimage;
		this.psbreeds = psbreeds;
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
