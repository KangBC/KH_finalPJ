package com.kh.finalPJ.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalPJ.member.memberDto;

@Service
public class AdminServieceImpl implements AdminServiece{

	@Autowired
	AdminDao adminDao;
	
	public List<memberDto> getMemberList() {
		return adminDao.getMemberList();
	}

}
