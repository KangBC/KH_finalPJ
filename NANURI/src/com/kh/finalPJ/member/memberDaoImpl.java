package com.kh.finalPJ.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class memberDaoImpl implements memberDao {

	@Autowired
	SqlSession sqlsession;

	private String namespace = "membersqls.";

	@Override
	public memberDto login(memberDto mem) throws Exception {
		return sqlsession.selectOne(namespace + "login", mem);
	}

	@Override
	public Integer idCheck(String id) throws Exception {
		return sqlsession.selectOne(namespace + "idCheck", id);
	}

	@Override
	public Integer emailCheck(String email) throws Exception {
		return sqlsession.selectOne(namespace + "emailCheck", email);
	}

	@Override
	public Integer nickCheck(String nickname) throws Exception {
		return sqlsession.selectOne(namespace + "nickCheck", nickname);
	}

	@Override
	public boolean addMember(memberDto mem) throws Exception {
		int n = sqlsession.insert(namespace + "addMember", mem);
		return n > 0 ? true : false;
	}

	@Override
	public boolean userUpdateAf(memberDto mem) throws Exception {
		int n = sqlsession.update(namespace + "userUpdateAf", mem);
		return n > 0 ? true : false;
	}

}
