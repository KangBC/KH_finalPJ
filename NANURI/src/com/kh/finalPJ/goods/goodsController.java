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
		

		model.addAttribute("seq",seq);
		
		return "rentaldetaile.tiles";
	}
	
	@ResponseBody
	@RequestMapping(value = "findtitle.do", method = RequestMethod.POST)
	public Map<Object, Object> findtitle(String title) throws Exception {
		
		Map<Object, Object> map = new HashMap<>();
		List<goodsBbsDto> list = goodsService.findgoods(title);
		System.out.println(list.size());
		
		map.put("list", list);
		return map;		
		
	}
	
	@ResponseBody
	@RequestMapping(value = "findchecked.do", method = RequestMethod.POST)
	public Map<Object, Object> findchecked(String[] lists) throws Exception {
		
		
		Map<Object, Object> map = new HashMap<>();
		
		List<goodsBbsDto> list = goodsService.findchecked(lists);
		
		map.put("checklist", list);
		
	/*	for(int i = 0 ; i < list.length; i++) {
			map.put(i+"", list[i]);
		}
		*/
		
		
		
		System.out.println( lists.length );
		
		
		
		for(int i = 0 ; i < lists.length; i++) {
			System.out.println( lists[i] );
		}
		
		/*
		
        for( Object key : map.keySet() ){
            System.out.println( String.format("키 : %s, 값 : %s", key, map.get(key)) );
        }*/


		
		
		
		return map;		
		
	}
	
	

}

