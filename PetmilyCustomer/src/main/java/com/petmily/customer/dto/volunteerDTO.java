package com.petmily.customer.dto;


public class volunteerDTO {

	int volunid;
	String volunregisno;
	int voluntime;
	String  volunorganization;
	String user_uid;
	String volunname;
	String volunplace;
	
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
	
	// by 은빈  -- 1365list 보기 위해
	public volunteerDTO(int volunid, String volunregisno, int voluntime, String volunorganization) {
		super();
		this.volunid = volunid;
		this.volunregisno = volunregisno;
		this.voluntime = voluntime;
		this.volunorganization = volunorganization;
	}
	
	// by 은빈 -- 1365 입력
	public volunteerDTO(String volunregisno, int voluntime, String volunorganization, String volunname,
			String volunplace) {
		super();
		this.volunregisno = volunregisno;
		this.voluntime = voluntime;
		this.volunorganization = volunorganization;
		this.volunname = volunname;
		this.volunplace = volunplace;
	}
	
	

	public void setVolunname(String volunname) {
		this.volunname = volunname;
	}

	public String getVolunplace() {
		return volunplace;
	}

	public void setVolunplace(String volunplace) {
		this.volunplace = volunplace;
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
