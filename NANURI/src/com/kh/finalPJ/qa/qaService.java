package com.kh.finalPJ.qa;

import java.util.List;

public interface qaService {
	
	public List<qaDto> getQaList();
	
	public boolean QaWrite(qaDto dto);
}
