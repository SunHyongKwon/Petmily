package com.petmily.admin.dto;

import java.sql.Timestamp;

public class ShowDTO {

	
	int shid;
	Timestamp shdate;
	int shlike;
	String user_uid;
	int posting_pid;
	
	public ShowDTO() {
		// TODO Auto-generated constructor stub
	}

	public ShowDTO(int shid, Timestamp shdate, int shlike, String user_uid, int posting_pid) {
		super();
		this.shid = shid;
		this.shdate = shdate;
		this.shlike = shlike;
		this.user_uid = user_uid;
		this.posting_pid = posting_pid;
	}

	public int getShid() {
		return shid;
	}

	public void setShid(int shid) {
		this.shid = shid;
	}

	public Timestamp getShdate() {
		return shdate;
	}

	public void setShdate(Timestamp shdate) {
		this.shdate = shdate;
	}

	public int getShlike() {
		return shlike;
	}

	public void setShlike(int shlike) {
		this.shlike = shlike;
	}

	public String getUser_uid() {
		return user_uid;
	}

	public void setUser_uid(String user_uid) {
		this.user_uid = user_uid;
	}

	public int getPosting_pid() {
		return posting_pid;
	}

	public void setPosting_pid(int posting_pid) {
		this.posting_pid = posting_pid;
	}
	
}
