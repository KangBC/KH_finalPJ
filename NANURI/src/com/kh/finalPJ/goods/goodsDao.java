package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.List;

import com.kh.finalPJ.review.reviewDto;

public interface goodsDao {

	List<goodsBbsDto> getbbs(String startindex, String endindex);
	
	List<goodsBbsDto> getbbslength();
	
	List<goodsBbsDto> findgoods(String title,String lists);
	
	void readcount(int seq);
	
	goodsBbsDto getgoodsdetail(int seq);
	
	List<reviewDto> getreview_qna(String g_code);
}
