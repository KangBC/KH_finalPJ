package com.kh.finalPJ.qa;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class qaDaoImpl implements qaDao {
	
	@Autowired
	SqlSession sqlSession;
	
	private String namespace ="KhQa.";

	@Override
	public List<qaDto> getQaList() {
		List<qaDto> list = sqlSession.selectList(namespace + "getQaList");
		return list;
	}

	@Override
	public boolean QaWrite(qaDto dto) {
		int n = sqlSession.insert(namespace + "QaWrite", dto);
		return n>0?true:false;
	}
}




















