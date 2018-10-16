package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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
		
		
	/*	
		for (int i = 0; i < list.size(); i++) {
			map.put("seq", list.get(i).getSeq());
			map.put("g_code", list.get(i).getG_code());
			map.put("title", list.get(i).getTitle());
			map.put("content", list.get(i).getContent());
			map.put("r_date", list.get(i).getR_date());
			map.put("g_price", list.get(i).getG_price());
		}
		*/
		
		
		map.put("list", list);



		
		/*Iterator<Object> keys = map.keySet().iterator();
		if(keys.hasNext()) {
			Object key = keys.next();
	        System.out.println( String.format("키 : %s, 값 : %s", key, map.get(key)) );
		}*/
		
		
		
		
	  /*  for (Object mapkey : map.keySet()){
	        System.out.println("key:"+mapkey+",value:"+map.get(mapkey) +  "  ");
	    }*/


		return map;		
		
	}
	
	
	/*@ResponseBody
	@RequestMapping(value = "findtitle.do", method = RequestMethod.POST)
	public String findtitle(String title) throws Exception {
		
		
		
		return title;		
		
	}*/

}

