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

	@Override
	public List<goodsBbsDto> findgoods(goodsBbsDto title) {
		
		List<goodsBbsDto> list = sqlSession.selectList(namespace + "getbbs", title);
		
		return list;
	}

	
	
}
