package com.kh.finalPJ.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class reviewServiceImpl implements reviewService {
	
	@Autowired
	reviewDao reviewDao;

	/*글 목록*/
	@Override
	public List<reviewDto> getreview() throws Exception {
		
		return reviewDao.getreview();
	}
	
	/*페이징리스트*/	
	@Override
	public List<reviewDto> getrevPagingList(reviewParam param) throws Exception {
		return reviewDao.getrevPagingList(param);
	}
	
	/*글 쓰기*/
	@Override
	public boolean writeReview(reviewDto dto) throws Exception {
		
		return reviewDao.writeReview(dto);
	}

	/*디테일보기*/
	@Override
	public reviewDto detailreview(int seq) throws Exception {
		
		return reviewDao.detailreview(seq);
	}

	/*글삭제*/
	@Override
	public void deleterev(int seq) throws Exception {
		
		reviewDao.deleterev(seq);
	}

	/*글 수정*/
	@Override
	public void reviewupdate(reviewDto dto, int seq) throws Exception {
		
		reviewDao.reviewupdate(dto, seq);
		
	}
	
	
	
	
}
