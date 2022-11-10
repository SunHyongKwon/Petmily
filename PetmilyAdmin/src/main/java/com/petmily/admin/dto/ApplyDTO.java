package com.petmily.admin.dto;

import java.sql.Timestamp;

public class ApplyDTO {

	int apid;
	String apcontent;
	Timestamp apdate;
	Timestamp apcaceldate;
	Timestamp apmatchingdate;
	Timestamp apcompletedate;
	String user_uid;
	int posting_pid;
	String posting_user_uid;
	
	public ApplyDTO() {
		// TODO Auto-generated constructor stub
	}

	public ApplyDTO(int apid, String apcontent, Timestamp apdate, Timestamp apcaceldate, Timestamp apmatchingdate,
			Timestamp apcompletedate, String user_uid, int posting_pid, String posting_user_uid) {
		super();
		this.apid = apid;
		this.apcontent = apcontent;
		this.apdate = apdate;
		this.apcaceldate = apcaceldate;
		this.apmatchingdate = apmatchingdate;
		this.apcompletedate = apcompletedate;
		this.user_uid = user_uid;
		this.posting_pid = posting_pid;
		this.posting_user_uid = posting_user_uid;
	}

	public int getApid() {
		return apid;
	}

	public void setApid(int apid) {
		this.apid = apid;
	}

	public String getApcontent() {
		return apcontent;
	}

	public void setApcontent(String apcontent) {
		this.apcontent = apcontent;
	}

	public Timestamp getApdate() {
		return apdate;
	}

	public void setApdate(Timestamp apdate) {
		this.apdate = apdate;
	}

	public Timestamp getApcaceldate() {
		return apcaceldate;
	}

	public void setApcaceldate(Timestamp apcaceldate) {
		this.apcaceldate = apcaceldate;
	}

	public Timestamp getApmatchingdate() {
		return apmatchingdate;
	}

	public void setApmatchingdate(Timestamp apmatchingdate) {
		this.apmatchingdate = apmatchingdate;
	}

	public Timestamp getApcompletedate() {
		return apcompletedate;
	}

	public void setApcompletedate(Timestamp apcompletedate) {
		this.apcompletedate = apcompletedate;
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

	public String getPosting_user_uid() {
		return posting_user_uid;
	}

	public void setPosting_user_uid(String posting_user_uid) {
		this.posting_user_uid = posting_user_uid;
	}
	
	
}
