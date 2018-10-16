package com.kh.finalPJ.review;

import java.util.List;

public interface reviewService {

	/*글 목록*/
	List<reviewDto> getreview() throws Exception;
	
	/*글 쓰기*/
	public boolean writeReview(reviewDto dto) throws Exception;
	
	/*디테일보기*/
	public reviewDto detailreview(int seq) throws Exception;
	
	/*글삭제*/
	public void deleterev(int seq) throws Exception;
	
	/*글 수정*/
	public void reviewupdate(reviewDto dto, int seq)throws Exception;
}
