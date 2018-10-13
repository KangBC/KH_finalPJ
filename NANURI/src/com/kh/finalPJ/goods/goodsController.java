package com.kh.finalPJ.goods;

import java.util.HashMap;
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
	
/*	@RequestMapping(value = "/goodsselect.do", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> searchGet(goodsBbsDto vo) throws Exception {
		
		goodsBbsDto dd = vo;
		
		 Map<String, Object> map = new HashMap<String, Object>();
		    map.put("id", vo);
		    map.put("age", 26);


		
		
		System.out.println(vo);
		
		return map;
	}*/
	
	@RequestMapping(value="/goodstest.do")
	public String searchGet(){

		
		return "asdf";
	}

}

