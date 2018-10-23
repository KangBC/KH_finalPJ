package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.finalPJ.review.reviewDto;


@Controller
public class goodsController {
	private static final Logger logger = LoggerFactory.getLogger(goodsController.class);
	
	@Autowired
	goodsService goodsService;
	
	// getList
	@RequestMapping(value="rentallist.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String getList(Model model,HttpServletRequest request) throws Exception{
		
		List<goodsBbsDto> list = goodsService.getbbslength();
		
		model.addAttribute("bbslist",list);
		
		return "rentallist.tiles";
		
	}
	
	
	// goodsdetaile view
	@RequestMapping(value="goodsdetail.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String goodsdetaile(Model model,int seq,String g_code,HttpServletRequest req) throws Exception{
		
		// readcount
		goodsService.readcount(seq);
		// getdetaile
		goodsBbsDto dto = goodsService.getgoodsdetail(seq);
		// g_code 연결(rivew,qna)
		List<reviewDto> code = goodsService.getreview_qna(g_code);
		
		
		for (int i = 0; i < code.size(); i++) {
			System.out.println(code.get(i));
		}
		
		System.out.println(g_code);
		
		model.addAttribute("detail",dto);
		model.addAttribute("reviewDto",code);
		return "rentaldetaile.tiles";
	}
	
	/* 이름 + SELECTBOX 검색 */
	@ResponseBody
	@RequestMapping(value = "findtitle.do", method = RequestMethod.POST)
	public Map<Object, Object> findtitle(HttpServletRequest req) throws Exception {
		
		String title = req.getParameter("title");
		String lists = req.getParameter("lists");
		
		System.out.println(title);
		System.out.println(lists);
		
		Map<Object, Object> map = new HashMap<>();
		
		List<goodsBbsDto> list = goodsService.findgoods(title,lists);
		
		
		map.put("list", list);
		
		
		return map;		
		
	}
	
	@ResponseBody
	@RequestMapping(value = "findlist.do", method = RequestMethod.POST)
	public Map<Object, Object> findlist(HttpServletRequest req) throws Exception {
		
		
		String startindex = req.getParameter("startindex");
		String endindex = req.getParameter("endindex");
		
		System.out.println(startindex);
		System.out.println(endindex);
		
		List<goodsBbsDto> list = goodsService.getbbs(startindex,endindex);
		Map<Object, Object> map = new HashMap<>();
		
		map.put("list", list);
		
		
		return map;		
		
	}
	
	
	

}

