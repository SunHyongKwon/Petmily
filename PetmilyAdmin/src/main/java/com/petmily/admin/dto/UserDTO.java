package com.petmily.admin.dto;

public class UserDTO {
	
	
	String uid;
	String upw;
	String uname;
	String uemail;
	String uphone;
	String uaddress;
	String utype;
	String ulevel;
	String uinfo;
	
	public UserDTO() {
		// TODO Auto-generated constructor stub
	}

	public UserDTO(String uid, String upw, String uname, String uemail, String uphone, String uaddress, String utype,
			String ulevel, String uinfo) {
		super();
		this.uid = uid;
		this.upw = upw;
		this.uname = uname;
		this.uemail = uemail;
		this.uphone = uphone;
		this.uaddress = uaddress;
		this.utype = utype;
		this.ulevel = ulevel;
		this.uinfo = uinfo;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUpw() {
		return upw;
	}

	public void setUpw(String upw) {
		this.upw = upw;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public String getUaddress() {
		return uaddress;
	}

	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}

	public String getUtype() {
		return utype;
	}

	public void setUtype(String utype) {
		this.utype = utype;
	}

	public String getUlevel() {
		return ulevel;
	}

	public void setUlevel(String ulevel) {
		this.ulevel = ulevel;
	}

	public String getUinfo() {
		return uinfo;
	}

	public void setUinfo(String uinfo) {
		this.uinfo = uinfo;
	}
	
	
}
