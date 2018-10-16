package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.List;

public interface goodsService {
	
    /* bbsList */
	List<goodsBbsDto> getbbs() throws Exception;
	/* findgoods */
	List<goodsBbsDto> findgoods(String title) throws Exception;
	/* findchecked */
	List<goodsBbsDto> findchecked(String[] lists) throws Exception;
	
}
