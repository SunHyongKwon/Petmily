package com.petmily.admin.dto;

import java.sql.Timestamp;

public class adminDTO {
	
	String adid;
	String adpw;
	String adname;
	String adphone;
	String ademail;
	Timestamp adinitdate;
	Timestamp adupdatedate;
	Timestamp addeletedate;
	String adacceptdate;
	
	public adminDTO() {
		// TODO Auto-generated constructor stub
	}

	public adminDTO(String adid, String adpw, String adname, String adphone, String ademail, Timestamp adinitdate,
			Timestamp adupdatedate, Timestamp addeletedate, String adacceptdate) {
		super();
		this.adid = adid;
		this.adpw = adpw;
		this.adname = adname;
		this.adphone = adphone;
		this.ademail = ademail;
		this.adinitdate = adinitdate;
		this.adupdatedate = adupdatedate;
		this.addeletedate = addeletedate;
		this.adacceptdate = adacceptdate;
	}

	public String getAdid() {
		return adid;
	}

	public void setAdid(String adid) {
		this.adid = adid;
	}

	public String getAdpw() {
		return adpw;
	}

	public void setAdpw(String adpw) {
		this.adpw = adpw;
	}

	public String getAdname() {
		return adname;
	}

	public void setAdname(String adname) {
		this.adname = adname;
	}

	public String getAdphone() {
		return adphone;
	}

	public void setAdphone(String adphone) {
		this.adphone = adphone;
	}

	public String getAdemail() {
		return ademail;
	}

	public void setAdemail(String ademail) {
		this.ademail = ademail;
	}

	public Timestamp getAdinitdate() {
		return adinitdate;
	}

	public void setAdinitdate(Timestamp adinitdate) {
		this.adinitdate = adinitdate;
	}

	public Timestamp getAdupdatedate() {
		return adupdatedate;
	}

	public void setAdupdatedate(Timestamp adupdatedate) {
		this.adupdatedate = adupdatedate;
	}

	public Timestamp getAddeletedate() {
		return addeletedate;
	}

	public void setAddeletedate(Timestamp addeletedate) {
		this.addeletedate = addeletedate;
	}

	public String getAdacceptdate() {
		return adacceptdate;
	}

	public void setAdacceptdate(String adacceptdate) {
		this.adacceptdate = adacceptdate;
	}
	
	
}
