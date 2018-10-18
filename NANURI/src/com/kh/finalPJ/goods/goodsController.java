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


@Controller
public class goodsController {
	private static final Logger logger = LoggerFactory.getLogger(goodsController.class);
	
	@Autowired
	goodsService goodsService;
	
	// getList
	@RequestMapping(value="rentallist.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String getList(Model model) throws Exception{
		
		List<goodsBbsDto> list = goodsService.getbbs();

		model.addAttribute("bbslist",list);
		
		return "rentallist.tiles";
		
		
	
		
	}
	
	
	// goodsdetaile view
	@RequestMapping(value="goodsdetail.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String goodsdetaile(Model model,int seq) throws Exception{
		
			
		//List<goodsBbsDto> list = goodsService.readcount();
		
		model.addAttribute("seq",seq);
		return "rentaldetaile.tiles";
	}
	
	/*이름검색*/
	@ResponseBody
	@RequestMapping(value = "findtitle.do", method = RequestMethod.POST)
	public Map<Object, Object> findtitle(HttpServletRequest req) throws Exception {
		
		String title = req.getParameter("title");
		String lists = req.getParameter("lists");
		
		Map<Object, Object> map = new HashMap<>();
		
		List<goodsBbsDto> list = goodsService.findgoods(title,lists);
		
		
		
		
		
		System.out.println(title);
		System.out.println(lists);
		
		map.put("list", list);
		
		
		return map;		
		
	}
	
	
	
	/*SELECT 박스 검색*/
	@ResponseBody
	@RequestMapping(value = "findchecked.do", method = RequestMethod.POST)
	public Map<Object, Object> findchecked(String lists) throws Exception {
		
		
		Map<Object, Object> map = new HashMap<>();
		/*System.out.println(lists);*/
	/*
		// 들어온 벨류값 확인
		for(int i = 0 ; i < lists.length; i++) {
			System.out.println(lists[i]);
			}
		
*/
		List<goodsBbsDto> list = goodsService.findchecked(lists);
		
		/*for(int i = 0 ; i < list.size(); i++) {
			System.out.println(list.get(i).getG_price());
			}*/
		
		map.put("checklist", list);
	
		return map;		
		
	}
	
	

}

