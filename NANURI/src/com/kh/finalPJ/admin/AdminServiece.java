package com.kh.finalPJ.admin;

import java.util.List;

import com.kh.finalPJ.goods.goodsDto;
import com.kh.finalPJ.member.memberDto;
import com.kh.finalPJ.member.secessionDto;

public interface AdminServiece {
	public List<memberDto> getMemberList(); 
	public List<secessionDto> getSecessionList();
	public List<goodsDto> getGoodsList();
	
	public boolean finalSecession(String id);
}
