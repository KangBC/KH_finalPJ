package com.kh.finalPJ.goods;

import java.util.List;

public interface goodsDao {

	 /* bbsList */
	List<goodsBbsDto> getbbs();
	
	List<goodsBbsDto> findgoods(goodsBbsDto g_name);
}
