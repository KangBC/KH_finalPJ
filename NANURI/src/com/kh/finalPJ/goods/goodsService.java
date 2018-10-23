package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.List;

import com.kh.finalPJ.review.reviewDto;

public interface goodsService {
	
    /* bbsList */
	public List<goodsBbsDto> getbbs(String startindex, String endindex) throws Exception;
	
	/*getbbslength*/
	public List<goodsBbsDto> getbbslength() throws Exception;

	
	/* findgoods */
	public List<goodsBbsDto> findgoods(String title,String lists) throws Exception;

	/* readcount */
	public void readcount(int seq) throws Exception;
	
	/*getgoodsdetail*/
	public goodsBbsDto getgoodsdetail(int seq) throws Exception;
	
	/*getreview_qna*/
	public List<reviewDto> getreview_qna(String g_code) throws Exception;
	
}
