package com.petmily.customer.dto;

import java.sql.Timestamp;

public class lecturecheckDTO {

	int lcid;
	Timestamp lcdate;
	String user_uid;
	int lecture_lid;
	
	public lecturecheckDTO() {
		// TODO Auto-generated constructor stub
	}

	public lecturecheckDTO(int lcid, Timestamp lcdate, String user_uid, int lecture_lid) {
		super();
		this.lcid = lcid;
		this.lcdate = lcdate;
		this.user_uid = user_uid;
		this.lecture_lid = lecture_lid;
	}

	public int getLcid() {
		return lcid;
	}

	public void setLcid(int lcid) {
		this.lcid = lcid;
	}

	public Timestamp getLcdate() {
		return lcdate;
	}

	public void setLcdate(Timestamp lcdate) {
		this.lcdate = lcdate;
	}

	public String getUser_uid() {
		return user_uid;
	}

	public void setUser_uid(String user_uid) {
		this.user_uid = user_uid;
	}

	public int getLecture_lid() {
		return lecture_lid;
	}

	public void setLecture_lid(int lecture_lid) {
		this.lecture_lid = lecture_lid;
	}
	
	
}
