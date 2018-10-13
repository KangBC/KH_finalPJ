package com.kh.finalPJ.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalPJ.member.memberDto;

@Service
public class adminServieceImpl implements adminServiece{

	@Autowired
	adminDao adminDao;
	
	public List<memberDto> getMemberList() {
		return adminDao.getMemberList();
	}

}
