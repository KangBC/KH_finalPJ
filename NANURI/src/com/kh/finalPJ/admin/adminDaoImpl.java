package com.kh.finalPJ.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.finalPJ.member.memberDto;

@Repository
public class adminDaoImpl implements adminDao{
	
	@Autowired
	SqlSession sqlSession;
	
	String namespace = "adminSqls.";
	
	public List<memberDto> getMemberList(){
		List<memberDto> memberlist = sqlSession.selectList(namespace + "getmemberlist");
		return memberlist;
	}
}
