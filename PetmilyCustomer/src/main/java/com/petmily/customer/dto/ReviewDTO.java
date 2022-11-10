package com.petmily.customer.dto;

public class ReviewDTO {
	
	
	int revid;
	String revtext;
	int revrating;
	String from_uid;
	int posting_pid;
	String to_uid;
	
	public ReviewDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewDTO(int revid, String revtext, int revrating, String from_uid, int posting_pid, String to_uid) {
		super();
		this.revid = revid;
		this.revtext = revtext;
		this.revrating = revrating;
		this.from_uid = from_uid;
		this.posting_pid = posting_pid;
		this.to_uid = to_uid;
	}

	public int getRevid() {
		return revid;
	}

	public void setRevid(int revid) {
		this.revid = revid;
	}

	public String getRevtext() {
		return revtext;
	}

	public void setRevtext(String revtext) {
		this.revtext = revtext;
	}

	public int getRevrating() {
		return revrating;
	}

	public void setRevrating(int revrating) {
		this.revrating = revrating;
	}

	public String getFrom_uid() {
		return from_uid;
	}

	public void setFrom_uid(String from_uid) {
		this.from_uid = from_uid;
	}

	public int getPosting_pid() {
		return posting_pid;
	}

	public void setPosting_pid(int posting_pid) {
		this.posting_pid = posting_pid;
	}

	public String getTo_uid() {
		return to_uid;
	}

	public void setTo_uid(String to_uid) {
		this.to_uid = to_uid;
	}
	
}
