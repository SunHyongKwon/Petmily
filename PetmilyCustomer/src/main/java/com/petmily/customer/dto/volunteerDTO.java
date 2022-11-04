package com.petmily.customer.dto;


public class volunteerDTO {

	int volunid;
	String volunregisno;
	int voluntime;
	String  volunorganization;
	String user_uid;
	
	public volunteerDTO() {
		// TODO Auto-generated constructor stub
	}

	public volunteerDTO(int volunid, String volunregisno, int voluntime, String volunorganization, String user_uid) {
		super();
		this.volunid = volunid;
		this.volunregisno = volunregisno;
		this.voluntime = voluntime;
		this.volunorganization = volunorganization;
		this.user_uid = user_uid;
	}

	public int getVolunid() {
		return volunid;
	}

	public void setVolunid(int volunid) {
		this.volunid = volunid;
	}

	public String getVolunregisno() {
		return volunregisno;
	}

	public void setVolunregisno(String volunregisno) {
		this.volunregisno = volunregisno;
	}

	public int getVoluntime() {
		return voluntime;
	}

	public void setVoluntime(int voluntime) {
		this.voluntime = voluntime;
	}

	public String getVolunorganization() {
		return volunorganization;
	}

	public void setVolunorganization(String volunorganization) {
		this.volunorganization = volunorganization;
	}

	public String getUser_uid() {
		return user_uid;
	}

	public void setUser_uid(String user_uid) {
		this.user_uid = user_uid;
	}
	
	
	
}
