package com.kh.finalPJ.goods;

import java.util.List;

public interface goodsService {
	
    /* bbsList */
	List<goodsBbsDto> getbbs() throws Exception;
	List<goodsBbsDto> findgoods(String title) throws Exception;
}