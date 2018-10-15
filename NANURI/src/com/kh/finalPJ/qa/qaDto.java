package com.kh.finalPJ.qa;

/*
	-- QnA
	CREATE TABLE NA_QA(
	   SEQ NUMBER(8) PRIMARY KEY,
	   ID VARCHAR2(50) NOT NULL,   
	   TITLE VARCHAR2(200) NOT NULL,
	   CONTENT VARCHAR2(4000) NOT NULL,
	   WDATE DATE NOT NULL,
	   REF NUMBER(8) NOT NULL,
	   DEL NUMBER(1) NOT NULL,
	   G_CODE VARCHAR2(50),
	   SECRET NUMBER(8) NOT NULL
	);
	DROP TABLE NA_QA
	CASCADE CONSTRAINTS;	
	
	ALTER TABLE NA_QA
	ADD CONSTRAINT FK_ID_05 FOREIGN KEY(ID)
	REFERENCES NA_MEMBER(ID);
	
	ALTER TABLE NA_QA
	ADD CONSTRAINT FK_Q_CODE FOREIGN KEY(G_CODE)
	REFERENCES NA_GOODS(G_CODE);
	
	CREATE SEQUENCE NA_SEQ_QA
	START WITH 1 INCREMENT BY 1;


*/
import java.io.Serializable;

public class qaDto implements Serializable {
	
	private int seq;
	private String id;
	private String title;
	private String content;
	private String wdate;
	private int ref;
	private int del; // 0이면 보이고 1이면 삭제된글
	private String g_code; // null 허용
	private int secret; // 0이면 공개 1이면 비공개
	
	public qaDto() {
	}	
	
	public qaDto(int seq, String id, String title, String content, String wdate, int ref, int del, String g_code,
			int secret) {
		super();
		this.seq = seq;
		this.id = id;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
		this.ref = ref;
		this.del = del;
		this.g_code = g_code;
		this.secret = secret;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getDel() {
		return del;
	}

	public void setDel(int del) {
		this.del = del;
	}

	public String getG_code() {
		return g_code;
	}

	public void setG_code(String g_code) {
		this.g_code = g_code;
	}

	public int getSecret() {
		return secret;
	}

	public void setSecret(int secret) {
		this.secret = secret;
	}

	@Override
	public String toString() {
		return "qaDto [seq=" + seq + ", id=" + id + ", title=" + title + ", content=" + content + ", wdate=" + wdate
				+ ", ref=" + ref + ", del=" + del + ", g_code=" + g_code + ", secret=" + secret + "]";
	}
	
	
	
}














