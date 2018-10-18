package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.List;

public interface goodsService {
	
    /* bbsList */
	List<goodsBbsDto> getbbs() throws Exception;
	/* findgoods */
	List<goodsBbsDto> findgoods(String title,String lists) throws Exception;
	/* findchecked */
	List<goodsBbsDto> findchecked(String lists) throws Exception;
	
}
