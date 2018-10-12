package com.kh.finalPJ.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class reviewDaoImpl implements reviewDao {
	
	@Autowired
	SqlSession sqlSession;
	
	private String namespace = "review.";

	/*글 목록*/
	@Override
	public List<reviewDto> getreview() {
		
	List<reviewDto> list = sqlSession.selectList(namespace + "getreview");
	
		return list;
	}
	
	
}
