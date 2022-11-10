package com.petmily.admin.dto;

import java.sql.Timestamp;

public class NoticeDTO {

	
	int nid;
	String ntitle;
	String ncontent;
	String nimage1;
	String nimage2;
	String nimage3;
	String ncategory;
	String nlocation;
	Timestamp ninitdate;
	Timestamp nupdatedate;
	Timestamp ndeletedate;
	String admin_adid;
	
	public NoticeDTO() {
		// TODO Auto-generated constructor stub
	}

	public NoticeDTO(int nid, String ntitle, String ncontent, String nimage1, String nimage2, String nimage3,
			String ncategory, String nlocation, Timestamp ninitdate, Timestamp nupdatedate, Timestamp ndeletedate,
			String admin_adid) {
		super();
		this.nid = nid;
		this.ntitle = ntitle;
		this.ncontent = ncontent;
		this.nimage1 = nimage1;
		this.nimage2 = nimage2;
		this.nimage3 = nimage3;
		this.ncategory = ncategory;
		this.nlocation = nlocation;
		this.ninitdate = ninitdate;
		this.nupdatedate = nupdatedate;
		this.ndeletedate = ndeletedate;
		this.admin_adid = admin_adid;
	}

	public int getNid() {
		return nid;
	}

	public void setNid(int nid) {
		this.nid = nid;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public String getNimage1() {
		return nimage1;
	}

	public void setNimage1(String nimage1) {
		this.nimage1 = nimage1;
	}

	public String getNimage2() {
		return nimage2;
	}

	public void setNimage2(String nimage2) {
		this.nimage2 = nimage2;
	}

	public String getNimage3() {
		return nimage3;
	}

	public void setNimage3(String nimage3) {
		this.nimage3 = nimage3;
	}

	public String getNcategory() {
		return ncategory;
	}

	public void setNcategory(String ncategory) {
		this.ncategory = ncategory;
	}

	public String getNlocation() {
		return nlocation;
	}

	public void setNlocation(String nlocation) {
		this.nlocation = nlocation;
	}

	public Timestamp getNinitdate() {
		return ninitdate;
	}

	public void setNinitdate(Timestamp ninitdate) {
		this.ninitdate = ninitdate;
	}

	public Timestamp getNupdatedate() {
		return nupdatedate;
	}

	public void setNupdatedate(Timestamp nupdatedate) {
		this.nupdatedate = nupdatedate;
	}

	public Timestamp getNdeletedate() {
		return ndeletedate;
	}

	public void setNdeletedate(Timestamp ndeletedate) {
		this.ndeletedate = ndeletedate;
	}

	public String getAdmin_adid() {
		return admin_adid;
	}

	public void setAdmin_adid(String admin_adid) {
		this.admin_adid = admin_adid;
	}
	
}
