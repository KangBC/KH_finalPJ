package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class goodsServiceImpl implements goodsService {

	@Autowired
	goodsDao goodsDao;

	
	@Override
	public List<goodsBbsDto> getbbs() {
		
		return goodsDao.getbbs();
	}


	@Override
	public List<goodsBbsDto> findgoods(String title,String lists) {
		return goodsDao.findgoods(title,lists);
	}


	@Override
	public void readcount(int seq) {
		goodsDao.readcount(seq);
	}


	@Override
	public goodsBbsDto getgoodsdetail(int seq) throws Exception {
		
		return goodsDao.getgoodsdetail(seq);
	}
	
	
	
}
