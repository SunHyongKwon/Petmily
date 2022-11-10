package com.petmily.customer.dto;

import java.sql.Timestamp;

public class ChattingDTO {

	int chattingid;
	String ctext;
	Timestamp csendtime;
	Timestamp cshowtime;
	String c_from_uid;
	int posting_pid;
	String c_to_uid;
	
	public ChattingDTO() {
		// TODO Auto-generated constructor stub
	}

	public ChattingDTO(int chattingid, String ctext, Timestamp csendtime, Timestamp cshowtime, String c_from_uid,
			int posting_pid, String c_to_uid) {
		super();
		this.chattingid = chattingid;
		this.ctext = ctext;
		this.csendtime = csendtime;
		this.cshowtime = cshowtime;
		this.c_from_uid = c_from_uid;
		this.posting_pid = posting_pid;
		this.c_to_uid = c_to_uid;
	}

	public int getChattingid() {
		return chattingid;
	}

	public void setChattingid(int chattingid) {
		this.chattingid = chattingid;
	}

	public String getCtext() {
		return ctext;
	}

	public void setCtext(String ctext) {
		this.ctext = ctext;
	}

	public Timestamp getCsendtime() {
		return csendtime;
	}

	public void setCsendtime(Timestamp csendtime) {
		this.csendtime = csendtime;
	}

	public Timestamp getCshowtime() {
		return cshowtime;
	}

	public void setCshowtime(Timestamp cshowtime) {
		this.cshowtime = cshowtime;
	}

	public String getC_from_uid() {
		return c_from_uid;
	}

	public void setC_from_uid(String c_from_uid) {
		this.c_from_uid = c_from_uid;
	}

	public int getPosting_pid() {
		return posting_pid;
	}

	public void setPosting_pid(int posting_pid) {
		this.posting_pid = posting_pid;
	}

	public String getC_to_uid() {
		return c_to_uid;
	}

	public void setC_to_uid(String c_to_uid) {
		this.c_to_uid = c_to_uid;
	}
	
	
}
