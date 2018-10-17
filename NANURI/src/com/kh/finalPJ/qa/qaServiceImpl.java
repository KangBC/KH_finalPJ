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
	public List<qaDto> getAdminQaList() {
		return QaDao.getAdminQaList();
	}	

	@Override
	public boolean QaWrite(qaDto dto) {
		return QaDao.QaWrite(dto);
	}

	// 상품번호 있을때 없을때 둘다 사용가능
	@Override 
	public boolean ansWrite(qaDto dto) {
		if(dto.getG_code().equals("null")) {
			// 상품번호 없을때
			return QaDao.ansWriteN(dto);			
		}else {
			//상품번호 있을때
			return QaDao.ansWriteY(dto);
		}
	}

	@Override
	public boolean qaAdminWrite(qaDto dto) {		
		return QaDao.qaAdminWrite(dto);
	}



}
