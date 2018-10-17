package com.kh.finalPJ.qa;

import java.util.List;

public interface qaService {
	
	public List<qaDto> getQaList();
	
	public List<qaDto> getAdminQaList();
	
	public boolean QaWrite(qaDto dto);
	
	public boolean ansWrite(qaDto dto);
	
	public boolean qaAdminWrite(qaDto dto);	
}
