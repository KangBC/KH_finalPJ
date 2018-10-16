package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.List;

public interface goodsDao {

	 /* bbsList */
	List<goodsBbsDto> getbbs();
	
	List<goodsBbsDto> findgoods(String g_name);
	
	List<goodsBbsDto> findchecked(String[] lists);
}
