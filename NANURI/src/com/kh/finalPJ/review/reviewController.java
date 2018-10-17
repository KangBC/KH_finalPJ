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
	@RequestMapping(value="reviewlist.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String revlist(Model model, reviewParam param) throws Exception{
		
		logger.info("Welcome reviewController revlist!! "+ new Date());
		
		List<reviewDto> list = reviewSrevice.getreview();
		model.addAttribute("reviewlist", list);
		
		//paging 처리
		int sn = param.getPageNumber();
		int start = (sn) * param.getRecordCountPerPage() + 1;
		int end = (sn + 1) * param.getRecordCountPerPage();
		
		param.setStart(start);
		param.setEnd(end);
			
		int totalRecordCount = list.size();		// 전체 글수
		
		model.addAttribute("pageNumber", sn);
		model.addAttribute("pageCountPerScreen", 5);
		model.addAttribute("recordCountPerPage", param.getRecordCountPerPage());
		model.addAttribute("totalRecordCount", totalRecordCount);
		
		//글의 갯수
		List<reviewDto> revlist = reviewSrevice.getrevPagingList(param);
		model.addAttribute("reviewlist", revlist);
		
		
		// 선택한 카테고리와 검색한 단어를 설정 
		model.addAttribute("s_category", param.getS_category());
		model.addAttribute("s_keyword", param.getS_keyword());
		
		logger.info("ddddddddddd "+  param.getS_category());
		logger.info("ddddddddddd "+  param.getS_keyword());
		
		return "reviewlist.tiles";
	}
	
	/*글쓰기*/
	@RequestMapping(value="reviewwrite.do",method = {RequestMethod.GET,	RequestMethod.POST})
	public String revwrite(Model model) throws Exception{
		
		logger.info("Welcome reviewController revwrite!!!! "+ new Date());

		model.addAttribute("reviewwrite");
		
		return "reviewwrite.tiles";
	}
	
	@RequestMapping(value="reviewwriteAf.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String revwriteAF(HttpServletRequest request, Model model) throws Exception{
		
		logger.info("Welcome reviewController revwriteAf!!!!! "+ new Date());
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String wdate = request.getParameter("wdate");
		
		logger.info("----------------------글쓰기 "+ id);
		
		reviewDto revdto = new reviewDto();
		revdto.setId(id);
		revdto.setTitle(title);
		revdto.setContent(content);
		revdto.setWdate(wdate);
		
		if(revdto.getContent().equals("<p>&nbsp;</p>") || revdto.getTitle().equals("")) {
			
			return "redirect:reviewwrite.do";
		}
		reviewSrevice.writeReview(revdto);

		return "redirect:reviewlist.do";
	}
	
	/*디테일보기*/
	@RequestMapping(value = "reviewdetail.do", 
			method = {RequestMethod.GET, RequestMethod.POST})
	public String detailreview(int seq, Model model) throws Exception{
		
		logger.info("Welcome reviewController reviewdetail!!!!!! "+ new Date());
		
		reviewDto dto = null;
		dto = reviewSrevice.detailreview(seq);
		model.addAttribute("detailreview", dto);
		
		//System.out.println("컨트롤"+dto.getContent());
		
		return "reviewdetail.tiles";	
	}
	
	/*글 삭제*/
	@RequestMapping(value = "deleterev.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String deleterev(reviewDto dto, Model model) throws Exception{
		
		logger.info("Welcome reviewController deleterev!!!!!!! "+ new Date());
		
		reviewSrevice.deleterev(dto.getSeq());
		
		return "redirect:/reviewlist.do";
	}
	
	/*글수정*/
	@RequestMapping(value = "reviewupdate.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	private String reviewupdate(reviewDto dto, Model model) throws Exception {
		
		logger.info("Welcome reviewController reviewupdate! "+ new Date());

		model.addAttribute("reviewupdate", "수정하기");
		
		reviewDto rdto = reviewSrevice.detailreview(dto.getSeq());
		model.addAttribute("reviewupdate", rdto);
		
		return "reviewupdate.tiles";
	}
	
	@RequestMapping(value = "reviewupdateAf.do", 
			method = RequestMethod.POST)
	public String reviewupdateAf(HttpServletRequest request, int seq, Model model) throws Exception {
	
		logger.info("Welcome reviewController reviewupdateAf!!!!!!!!! "+ new Date());
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String wdate = request.getParameter("wdate");

		reviewDto revdto = new reviewDto();
		revdto.setSeq(seq);
		revdto.setId(id);
		revdto.setTitle(title);
		revdto.setContent(content);
		revdto.setWdate(wdate);

		reviewSrevice.reviewupdate(revdto, seq);
		
		return "redirect:/reviewlist.do";
	}
}
