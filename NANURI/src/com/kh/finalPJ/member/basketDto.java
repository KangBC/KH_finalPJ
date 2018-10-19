package com.kh.finalPJ.member;

/*
DROP TABLE BASKET
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_BASKET;

CREATE TABLE BASKET(
   SEQ NUMBER(8) PRIMARY KEY,
   ID VARCHAR2(50) NOT NULL,   
   G_CODE VARCHAR2(50) NOT NULL,
   MONTH NUMBER(8) NOT NULL,
   AMOUNT NUMBER(8) NOT NULL
);

CREATE SEQUENCE SEQ_BASKET
START WITH 1 INCREMENT BY 1;

ALTER TABLE BASKET
ADD CONSTRAINT FK_BA_CODE FOREIGN KEY(G_CODE)
REFERENCES GOODS(G_CODE);

ALTER TABLE BASKET
ADD CONSTRAINT FK_BAA_CODE FOREIGN KEY(ID)
REFERENCES MEMBER(ID);

INSERT INTO BASKET VALUES(SEQ_BASKET.NEXTVAL,'user','BC1111',3,1);
INSERT INTO BASKET VALUES(SEQ_BASKET.NEXTVAL,'user','BC1112',1,1);
*/

public class basketDto {
	private int seq;
	private String id;
	private String g_code;
	private int month;
	private int amount;

	public basketDto() {

	}

	public basketDto(int seq, String id, String g_code, int month, int amount) {
		super();
		this.seq = seq;
		this.id = id;
		this.g_code = g_code;
		this.month = month;
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "basketDto [seq=" + seq + ", id=" + id + ", g_code=" + g_code + ", month=" + month + ", amount=" + amount
				+ "]";
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

	public String getG_code() {
		return g_code;
	}

	public void setG_code(String g_code) {
		this.g_code = g_code;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
}
