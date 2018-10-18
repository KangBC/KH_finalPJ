package com.kh.finalPJ.review;

import java.io.Serializable;

public class reviewDto implements Serializable{

	private int seq;
	private String id;
	private String title;
	private String content;
	private String wdate;
	private int del;
	private String g_code;
	private int star;
	
	public reviewDto() {
		
	}
	
	public reviewDto(int seq, String id, String title, String content, String wdate, int del) {
		super();
		this.seq = seq;
		this.id = id;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
		this.del = del;
	}

	public reviewDto(int seq, String id, String title, String content, String wdate, int del, String g_code, int star) {
		super();
		this.seq = seq;
		this.id = id;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
		this.del = del;
		this.g_code = g_code;
		this.star = star;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
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

	@Override
	public String toString() {
		return "reviewDto [seq=" + seq + ", id=" + id + ", title=" + title + ", content=" + content + ", wdate=" + wdate
				+ ", del=" + del + ", g_code=" + g_code + "]";
	}
	
	
}
