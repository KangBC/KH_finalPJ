package com.kh.finalPJ.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalPJ.goods.goodsDto;
import com.kh.finalPJ.member.memberDto;
import com.kh.finalPJ.member.secessionDto;

@Service
public class AdminServieceImpl implements AdminServiece{

	@Autowired
	AdminDao adminDao;
	
	@Override
	public List<memberDto> getMemberList() {
		return adminDao.getMemberList();
	}

	@Override
	public List<secessionDto> getSecessionList() {
		return adminDao.getSecessionList();
	}
	@Override
	public List<goodsDto> getGoodsList(){
		return adminDao.getGoodsList();
	}

	@Override
	public boolean goodsRegist(goodsDto goods) {
		return adminDao.goodsRegist(goods);
	}

	@Override
	public boolean finalSecession(String id) {
		boolean updCk = adminDao.secessionUpdate(id);
		boolean delCk = adminDao.finalSecession(id);
		
		return (delCk&&updCk);
	}
}
