package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.List;

public interface goodsService {
	
    /* bbsList */
	public List<goodsBbsDto> getbbs() throws Exception;
	
	/* findgoods */
	public List<goodsBbsDto> findgoods(String title,String lists) throws Exception;

	/* readcount */
	public void readcount(int seq) throws Exception;
	
	/*getgoodsdetail*/
	public goodsBbsDto getgoodsdetail(int seq) throws Exception;
}
