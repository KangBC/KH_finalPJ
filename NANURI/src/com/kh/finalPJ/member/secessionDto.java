package com.kh.finalPJ.member;

/*
  DROP TABLE SECESSION
  CASCADE CONSTRAINTS;

  CREATE TABLE SECESSION(
       DEL_ID VARCHAR2(50) PRIMARY KEY,
       DEL_REASON VARCHAR2(200) NOT NULL,
       DEL_SDATE DATE NOT NULL,
       DEL_EDATE VARCHAR2(12) NOT NULL,
       STATUS NUMBER(1) NOT NULL
  );
    
  INSERT INTO SECESSION VALUES(
  'test11','개인사유',SYSDATE,SYSDATE+7,0);

  select * from SECESSION;
 */

public class secessionDto {
	
	private String del_id;
	private String reason;
	private String sdate;
	private String edate;
	private String status;

	public secessionDto(String del_id, String reason, String sdate, String edate, String status) {
		super();
		this.del_id = del_id;
		this.reason = reason;
		this.sdate = sdate;
		this.edate = edate;
		this.status = status;
	}
	
	public String getDel_id() {
		return del_id;
	}
	
	public void setDel_id(String del_id) {
		this.del_id = del_id;
	}
	
	public String getReason() {
		return reason;
	}
	
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	public String getSdate() {
		return sdate;
	}
	
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	public String toString() {
		return "secessionDto [del_id=" + del_id + ", reason=" + reason + ", sdate=" + sdate + ", edate=" + edate
				+ ", status=" + status + "]";
	}
}
