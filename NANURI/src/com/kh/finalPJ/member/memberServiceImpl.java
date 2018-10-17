package com.kh.finalPJ.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class memberServiceImpl implements memberService {

	@Autowired
	private memberDao memberdao;

	@Override
	public memberDto login(memberDto mem) throws Exception {
		return memberdao.login(mem);
	}

	@Override
	public Integer idCheck(String id) throws Exception {
		return memberdao.idCheck(id);
	}

	@Override
	public Integer emailCheck(String email) throws Exception {
		return memberdao.emailCheck(email);
	}

	@Override
	public Integer nickCheck(String nickname) throws Exception {
		return memberdao.nickCheck(nickname);
	}

	@Override
	public boolean addMember(memberDto mem) throws Exception {
		return memberdao.addMember(mem);
	}

	@Override
	public boolean userUpdateAf(memberDto mem) throws Exception {
		return memberdao.userUpdateAf(mem);
	}

}
