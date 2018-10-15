package com.kh.finalPJ.qa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class qaServiceImpl implements qaService {
	
	@Autowired
	qaDao QaDao;

	@Override
	public List<qaDto> getQaList() {
		return QaDao.getQaList();
	}

	@Override
	public boolean QaWrite(qaDto dto) {
		return QaDao.QaWrite(dto);
	} 
}
