package com.kh.finalPJ.member;

import java.util.List;

public interface memberService {

	memberDto login(memberDto mem) throws Exception;

	Integer idCheck(String id) throws Exception;

	Integer emailCheck(String email) throws Exception;

	Integer nickCheck(String nickname) throws Exception;

	boolean addMember(memberDto mem) throws Exception;

	boolean userUpdateAf(memberDto mem) throws Exception;

	boolean secessionAf(secessionDto sec) throws Exception;

	List<basketListDto> getBasketList(String id) throws Exception;

	boolean basketListDel(Integer seq) throws Exception;
	
	Integer getTotalPrice(Integer seq) throws Exception;

}
