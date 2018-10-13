package com.kh.finalPJ.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class reviewController {
	
	
	@Autowired
	reviewService reviewSrevice;
	
	/*글 목록*/
	@RequestMapping(value="reviewlist.do",method = RequestMethod.GET)
	public String revlist(Model model) throws Exception{
		
		List<reviewDto> list = reviewSrevice.getreview();
		model.addAttribute("reviewlist", list);
	
		return "reviewlist.tiles";
	}
	
	@RequestMapping(value="reviewwrite.do",method = RequestMethod.GET)
	public String revwrite(Model model) throws Exception{
		
		return "reviewwrite.tiles";
	}

}
