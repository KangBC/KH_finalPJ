package com.kh.finalPJ.member;

//DROP TABLE MEMBER
//CASCADE CONSTRAINTS;
//
//CREATE TABLE MEMBER (
//	    ID VARCHAR2(50) PRIMARY KEY,
//	    PWD VARCHAR2(50) NOT NULL,
//	    NICKNAME VARCHAR2(50) UNIQUE,
//	    EMAIL VARCHAR2(50) UNIQUE,
//	   PHONE VARCHAR2(15) NOT NULL,
//	   ADDRESS VARCHAR2(200) NOT NULL,
//	   NAME VARCHAR2(50) NOT NULL,
//	   AUTH NUMBER(1) NOT NULL
//	);
//    
//INSERT INTO MEMBER VALUES('test11','test11','관리자','test@test.com','010-1234-1234','서울시','홍길동',0);

public class memberDto {
	private String id;
	private String pwd;
	private String nickname;
	private String email;
	private String phone;
	private String address;
	private String name;
	private int auth;
	
	public memberDto() {
	
	}

	public memberDto(String id, String pwd, String nickname, String email, String phone, String address, String name,
			int auth) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.nickname = nickname;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.name = name;
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "memberDto [id=" + id + ", pwd=" + pwd + ", nickname=" + nickname + ", email=" + email + ", phone="
				+ phone + ", address=" + address + ", name=" + name + ", auth=" + auth + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}
	
}
