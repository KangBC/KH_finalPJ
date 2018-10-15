package com.kh.finalPJ.goods;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class goodsServiceImpl implements goodsService {

	@Autowired
	goodsDao goodsDao;

	
	 /* bbsList */
	@Override
	public List<goodsBbsDto> getbbs() {
		
		return goodsDao.getbbs();
	}


	@Override
	public List<goodsBbsDto> findgoods(String title) {
		return goodsDao.findgoods(title);
	}
	
	
	
}
