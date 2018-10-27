package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalPJ.member.basketDto;
import com.kh.finalPJ.member.memberDto;
import com.kh.finalPJ.review.reviewDto;

@Service
public class goodsServiceImpl implements goodsService {

	@Autowired
	goodsDao goodsDao;

	
	@Override
	public List<goodsBbsDto> getbbs(String startindex, String endindex, String category) {
		
		return goodsDao.getbbs(startindex,endindex,category);
	}

	

	@Override
	public List<goodsBbsDto> getbbslength() throws Exception {
		return goodsDao.getbbslength();
	}



	@Override
	public List<goodsBbsDto> findgoods(String title,String lists,String category) {
		return goodsDao.findgoods(title,lists,category);
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



	@Override
	public boolean basketinsert(basketDto dto) throws Exception {
		return goodsDao.basketinsert(dto);
		
	}



	@Override
	public List<goodsBbsDto> getbbscategory(String division) throws Exception {
		return goodsDao.getbbscategory(division);
	}



	@Override
	public memberDto selectMember(String id) {
		return goodsDao.selectMember(id);
	}

	@Override
	public goodsDto selectGoods(String g_code) {
		return goodsDao.selectGoods(g_code);
	}
	
}
