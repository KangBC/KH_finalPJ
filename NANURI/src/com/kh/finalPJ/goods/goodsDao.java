package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.List;

public interface goodsDao {

	List<goodsBbsDto> getbbs();
	
	List<goodsBbsDto> findgoods(String title,String lists);
	
	void readcount(int seq);
	
	goodsBbsDto getgoodsdetail(int seq);
}
