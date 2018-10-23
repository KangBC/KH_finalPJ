package com.kh.finalPJ.goods;

public class goodspage {
	
	private String startindex;
	private String endindex;
	
	
	public goodspage() {}
	
	
	public goodspage(String startindex, String endindex) {
		super();
		this.startindex = startindex;
		this.endindex = endindex;
	}


	public String getStartindex() {
		return startindex;
	}


	public void setStartindex(String startindex) {
		this.startindex = startindex;
	}


	public String getEndindex() {
		return endindex;
	}


	public void setEndindex(String endindex) {
		this.endindex = endindex;
	}
	
	
	
}

