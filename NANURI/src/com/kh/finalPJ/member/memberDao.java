package com.kh.finalPJ.member;

public interface memberDao {

	memberDto login(memberDto mem) throws Exception;

	Integer idCheck(String id) throws Exception;

	Integer emailCheck(String email) throws Exception;

	Integer nickCheck(String nickname) throws Exception;

	boolean addMember(memberDto mem) throws Exception;

}
