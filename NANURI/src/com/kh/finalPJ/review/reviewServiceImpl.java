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
	
	
	
	
}
