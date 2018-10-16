package com.kh.finalPJ.review;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.sun.net.httpserver.HttpServer;

@Controller
public class reviewController {
	
	private static final Logger logger = LoggerFactory.getLogger(reviewController.class);
	
	
	@Autowired
	reviewService reviewSrevice;
	
	/*글 목록*/
	@RequestMapping(value="reviewlist.do",method = RequestMethod.GET)
	public String revlist(Model model) throws Exception{
		
		List<reviewDto> list = reviewSrevice.getreview();
		model.addAttribute("reviewlist", list);
	
		return "reviewlist.tiles";
	}
	
	/*글쓰기*/

	@RequestMapping(value="reviewwrite.do",method = {RequestMethod.GET,	RequestMethod.POST})
	public String revwrite(Model model) throws Exception{
		
		logger.info("Welcome reviewController revwrite! "+ new Date());
		
		model.addAttribute("doc_title", "글쓰기");
		
		return "reviewwrite.tiles";
	}
	
	@RequestMapping(value="reviewwriteAf.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String revwriteAF(HttpServletRequest request, Model model) throws Exception{
		logger.info("Welcome reviewController revwriteAf! "+ new Date());
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String wdate = request.getParameter("wdate");
		//String fileload = request.getParameter("fileload");
		
		reviewDto revdto = new reviewDto();
		revdto.setId(id);
		revdto.setTitle(title);
		revdto.setContent(content);
		revdto.setWdate(wdate);
		
		reviewSrevice.writeReview(revdto);

		if(revdto.getContent().equals("") || revdto.getTitle().equals("")) {
			
			return "reviewwrite";
		}
		
		return "redirect:reviewlist.do";
	}
	
	/*디테일보기*/
	@RequestMapping(value = "reviewdetail.do", 
			method = {RequestMethod.GET, RequestMethod.POST})
	public String detailreview(int seq, Model model) throws Exception{
		
		logger.info("Welcome reviewController reviewdetail! "+ new Date());
		
		reviewDto dto = null;
		dto = reviewSrevice.detailreview(seq);
		model.addAttribute("detailreview", dto);
		
		System.out.println("컨트롤"+dto.getContent());
		
		return "reviewdetail.tiles";
		
	}
	
	/*글 삭제*/
	@RequestMapping(value = "deleterev.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String deleterev(reviewDto dto, Model model) throws Exception{
		
		logger.info("Welcome reviewController deleterev! "+ new Date());
		
		reviewSrevice.deleterev(dto.getSeq());
		
		return "redirect:/reviewlist.do";
	}
}
