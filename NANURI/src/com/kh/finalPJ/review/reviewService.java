package com.kh.finalPJ.review;

import java.util.List;

public interface reviewService {

	/*글 목록*/
	List<reviewDto> getreview() throws Exception;
	
}
