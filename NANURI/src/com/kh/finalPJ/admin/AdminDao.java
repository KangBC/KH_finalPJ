package com.kh.finalPJ.admin;

import java.util.List;

import com.kh.finalPJ.member.memberDto;
import com.kh.finalPJ.member.secessionDto;

public interface AdminDao {
	public List<memberDto> getMemberList(); 
	public List<secessionDto> getSecessionList(); 
}
