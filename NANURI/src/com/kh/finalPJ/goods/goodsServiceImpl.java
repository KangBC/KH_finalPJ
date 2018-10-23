package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalPJ.review.reviewDto;

@Service
public class goodsServiceImpl implements goodsService {

	@Autowired
	goodsDao goodsDao;

	
	@Override
	public List<goodsBbsDto> getbbs(String startindex, String endindex) {
		
		return goodsDao.getbbs(startindex,endindex);
	}

	

	@Override
	public List<goodsBbsDto> getbbslength() throws Exception {
		return goodsDao.getbbslength();
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


	@Override
	public List<reviewDto> getreview_qna(String g_code) throws Exception {
		return goodsDao.getreview_qna(g_code);
	}
	
	
	
}
