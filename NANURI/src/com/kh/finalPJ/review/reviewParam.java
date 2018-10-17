package com.kh.finalPJ.review;

//view로부터 controller로 넘어올 데이터
public class reviewParam {

	// --------------- search
	private String s_category;
	private String s_keyword;

	// --------------- paging
	private int recordCountPerPage = 5;
	private int pageNumber = 0;

	private int start = 1;
	private int end = 10;
	
	
	private int seq;
	private String id;
	private String title;
	private String content;
	private String wdate;
	private int del;
	private String g_code;
	
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
	public String getS_category() {
		return s_category;
	}
	public void setS_category(String s_category) {
		this.s_category = s_category;
	}
	public String getS_keyword() {
		return s_keyword;
	}
	public void setS_keyword(String s_keyword) {
		this.s_keyword = s_keyword;
	}
	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}
	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}


}
