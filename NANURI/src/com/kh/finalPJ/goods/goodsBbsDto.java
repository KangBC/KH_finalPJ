package com.kh.finalPJ.goods;

import java.io.Serializable;

/*
CREATE TABLE NA_R_BBS(
SEQ NUMBER(8) PRIMARY KEY,
G_CODE VARCHAR2(50) NOT NULL,
TITLE VARCHAR2(50) NOT NULL,
CONTENT VARCHAR2(50) NOT NULL,
R_DATE DATE NOT NULL
);

ALTER TABLE NA_R_BBS
ADD CONSTRAINT FK_ID_02 FOREIGN KEY(ID)
REFERENCES NA_MEMBER(ID);

ALTER TABLE NA_R_BBS
ADD CONSTRAINT FK_G_CODE FOREIGN KEY(G_CODE)
REFERENCES NA_GOODS(G_CODE);

CREATE SEQUENCE SEQ_NA_R_BBS
START WITH 1 INCREMENT BY 1;

*/
public class goodsBbsDto implements Serializable {

	private int seq;
	private String g_code;
	private String title;
	private String content;
	private String r_date;
	private int g_price;
	
	public goodsBbsDto() {}


	public goodsBbsDto(int seq, String g_code, String title, String content, String r_date) {
		super();
		this.seq = seq;
		this.g_code = g_code;
		this.title = title;
		this.content = content;
		this.r_date = r_date;
	}



	public goodsBbsDto(int seq, String g_code, String title, String content, String r_date, int g_price) {
		super();
		this.seq = seq;
		this.g_code = g_code;
		this.title = title;
		this.content = content;
		this.r_date = r_date;
		this.g_price = g_price;
	}


	public int getSeq() {
		return seq;
	}


	public void setSeq(int seq) {
		this.seq = seq;
	}


	public String getG_code() {
		return g_code;
	}


	public void setG_code(String g_code) {
		this.g_code = g_code;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getR_date() {
		return r_date;
	}


	public void setR_date(String r_date) {
		this.r_date = r_date;
	}
	
	
	

	public int getG_price() {
		return g_price;
	}


	public void setG_price(int g_price) {
		this.g_price = g_price;
	}

	
}
