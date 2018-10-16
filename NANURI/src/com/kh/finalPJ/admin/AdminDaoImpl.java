package com.kh.finalPJ.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.finalPJ.goods.goodsDto;
import com.kh.finalPJ.member.memberDto;
import com.kh.finalPJ.member.secessionDto;

@Repository
public class AdminDaoImpl implements AdminDao{
	
	@Autowired
	SqlSession sqlSession;
	
	String namespace = "adminSqls.";
	
	public List<memberDto> getMemberList(){
		List<memberDto> memberlist = sqlSession.selectList(namespace + "getMemberList");
		return memberlist;
	}

	@Override
	public List<secessionDto> getSecessionList() {
		List<secessionDto> memberlist = sqlSession.selectList(namespace + "getSecessionList");
		return memberlist;
	}

	@Override
	public List<goodsDto> getGoodsList() {
		List<goodsDto> goodsList = sqlSession.selectList(namespace + "getGoodsList");
		return goodsList;
	}

	@Override
	public boolean finalSecession(String id) {
		return sqlSession.delete(namespace + "finalSecession",id)>0? true:false;
	}

	@Override
	public boolean secessionUpdate(String id) {
		return sqlSession.update(namespace + "secessionUpdate",id)>0? true:false;
	}
	
}
