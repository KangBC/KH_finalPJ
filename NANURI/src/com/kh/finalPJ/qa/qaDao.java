package com.kh.finalPJ.qa;

import java.util.List;

public interface qaDao {
	
	public List<qaDto> getQaList();
	
	public boolean QaWrite(qaDto dto);
}
