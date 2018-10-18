package com.kh.finalPJ.review;

import java.util.List;

public interface reviewDao {
	
	/*글 목록*/
	List<reviewDto> getreview();
	
	/*페이징리스트*/
	List<reviewDto> getrevPagingList(reviewParam param) throws Exception;
	int getrevCount(reviewParam param) throws Exception;
	
	/*글 쓰기*/
	boolean writeReview(reviewDto dto) throws Exception;
	
	/*디테일보기*/
	public reviewDto detailreview(int seq) throws Exception;
	
	/*글삭제*/
	public void deleterev(int seq) throws Exception;
	
	/*글 수정*/
	public void reviewupdate(reviewDto dto, int seq)throws Exception;

	/*페이징*/
	//public int getcountlist ();
}
