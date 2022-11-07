package com.petmily.customer.dto;

public class kakaoDTO {
	long id;
	String name;
	String profile;
	String birthday;
	String email;
	String gender;
	
	public kakaoDTO() {
		// TODO Auto-generated constructor stub
	}

	

	public kakaoDTO(long id, String name, String profile, String birthday, String email, String gender) {
		super();
		this.id = id;
		this.name = name;
		this.profile = profile;
		this.birthday = birthday;
		this.email = email;
		this.gender = gender;
	}



	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
