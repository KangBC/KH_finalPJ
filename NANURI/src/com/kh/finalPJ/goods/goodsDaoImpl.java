package com.kh.finalPJ.goods;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class goodsDaoImpl implements goodsDao {

	
	@Autowired
	SqlSession sqlSession;
	
	private String namespace = "goods.";
	
	 /* bbsList */
	@Override
	public List<goodsBbsDto> getbbs() {
		
		List<goodsBbsDto> list = sqlSession.selectList(namespace + "getbbs");
		
		return list;
	}

	/* AJAX 검색 */
	@Override
	public List<goodsBbsDto> findgoods(String title) {
		
		List<goodsBbsDto> list = sqlSession.selectList(namespace + "findgoods", title + "%");
		
		return list;
	}

	
	
}
