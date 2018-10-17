package com.kh.finalPJ.qa;

import java.util.List;

public interface qaDao {
	
	public List<qaDto> getQaList();
	
	public List<qaDto> getAdminQaList();
	
	public boolean QaWrite(qaDto dto);
	
	public boolean ansWriteN(qaDto dto);
	
	public boolean ansWriteY(qaDto dto);
	
	public boolean qaAdminWrite(qaDto dto);
}
