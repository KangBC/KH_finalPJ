package com.kh.finalPJ.member;

public class basketListDto {

	private int seq;
	private String id;
	private String g_img;
	private String g_name;
	private int amount;
	private int month;
	private int g_price;

	public basketListDto() {

	}

	public basketListDto(int seq, String id, String g_img, String g_name, int amount, int month, int g_price) {
		super();
		this.seq = seq;
		this.id = id;
		this.g_img = g_img;
		this.g_name = g_name;
		this.amount = amount;
		this.month = month;
		this.g_price = g_price;
	}

	@Override
	public String toString() {
		return "basketListDto [seq=" + seq + ", id=" + id + ", g_img=" + g_img + ", g_name=" + g_name + ", amount="
				+ amount + ", month=" + month + ", g_price=" + g_price + "]";
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

	public String getG_img() {
		return g_img;
	}

	public void setG_img(String g_img) {
		this.g_img = g_img;
	}

	public String getG_name() {
		return g_name;
	}

	public void setG_name(String g_name) {
		this.g_name = g_name;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getG_price() {
		return g_price;
	}

	public void setG_price(int g_price) {
		this.g_price = g_price;
	}
}
