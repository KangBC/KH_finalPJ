package com.kh.finalPJ.review;

import java.util.List;

public interface reviewDao {
	
	/*글 목록*/
	List<reviewDto> getreview();
	
	/*글 쓰기*/
	boolean writeReview(reviewDto dto) throws Exception;
	
	/*디테일보기*/
	public reviewDto detailreview(int seq) throws Exception;
	
	/*글삭제*/
	public void deleterev(int seq) throws Exception;

}
