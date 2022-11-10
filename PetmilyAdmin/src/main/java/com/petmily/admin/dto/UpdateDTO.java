package com.petmily.admin.dto;

import java.sql.Timestamp;

public class UpdateDTO {
	
	int upid;
	Timestamp uplecupdatedate;
	int lecture_lid;
	String admin_adid;
	
	public UpdateDTO() {
		// TODO Auto-generated constructor stub
	}

	public UpdateDTO(int upid, Timestamp uplecupdatedate, int lecture_lid, String admin_adid) {
		super();
		this.upid = upid;
		this.uplecupdatedate = uplecupdatedate;
		this.lecture_lid = lecture_lid;
		this.admin_adid = admin_adid;
	}

	public int getUpid() {
		return upid;
	}

	public void setUpid(int upid) {
		this.upid = upid;
	}

	public Timestamp getUplecupdatedate() {
		return uplecupdatedate;
	}

	public void setUplecupdatedate(Timestamp uplecupdatedate) {
		this.uplecupdatedate = uplecupdatedate;
	}

	public int getLecture_lid() {
		return lecture_lid;
	}

	public void setLecture_lid(int lecture_lid) {
		this.lecture_lid = lecture_lid;
	}

	public String getAdmin_adid() {
		return admin_adid;
	}

	public void setAdmin_adid(String admin_adid) {
		this.admin_adid = admin_adid;
	}
	
	
}
