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

import com.kh.finalPJ.common.orderedDto;
import com.kh.finalPJ.member.basketDto;
import com.kh.finalPJ.member.memberDto;
import com.kh.finalPJ.member.memberService;
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
		String category = req.getParameter("category");

		
		System.out.println(category);
		System.out.println(title);
		System.out.println(lists);
		
		Map<Object, Object> map = new HashMap<>();
		
		List<goodsBbsDto> list = goodsService.findgoods(title,lists,category);
		
		System.out.println(list.size());
		
		
		map.put("list", list);
		
		
		return map;		
		
	}
	
	/*페이징 인덱스*/
	@ResponseBody
	@RequestMapping(value = "findlist.do", method = RequestMethod.POST)
	public Map<Object, Object> findlist(HttpServletRequest req) throws Exception {
		
		
		String startindex = req.getParameter("startindex");
		String endindex = req.getParameter("endindex");
		String category = req.getParameter("category");

	
		
		
		List<goodsBbsDto> list = goodsService.getbbs(startindex,endindex,category);
		Map<Object, Object> map = new HashMap<>();
		
		map.put("list", list);
		
		
		return map;		
		
	}
	
	/*장바구니 insert*/
	@ResponseBody
	@RequestMapping(value="basketinsert.do",method = RequestMethod.POST)
	public boolean basketinsert(Model model,HttpServletRequest req) throws Exception{
		
		String id = req.getParameter("id");
		String g_code = req.getParameter("gcode");
		int month = (Integer.parseInt(req.getParameter("month")));
		int amount = (Integer.parseInt(req.getParameter("amount")));
		int resultnum = (Integer.parseInt(req.getParameter("resultnum")));
		
		
		
		
		//System.out.println(resultnum + "ddddddddddddddddddddddddddddddddddddddddddd");
		
		basketDto dto = new basketDto();
		dto.setId(id);
		dto.setG_code(g_code);
		dto.setMonth(month);
		dto.setAmount(amount);
		dto.setSum_price(resultnum);
		
		System.out.println(dto.toString());
		
		return goodsService.basketinsert(dto);
		
		
		
	}
	
	/*카테고리*/
	@RequestMapping(value="rental_category.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String rental_category(Model model,String division) throws Exception{
		
		
		List<goodsBbsDto> list = null;
		String title = null;
		// 유아
		if(division.equals("AC")) {
			list = goodsService.getbbscategory(division);
			title = "유아동";
		}	
		// 레저
		else if(division.equals("BC")) {
			list = goodsService.getbbscategory(division);
			title = "레저";
		}
		// 패션
		else if(division.equals("CC")) {
			list = goodsService.getbbscategory(division);
			title = "패션";
		}
		// 리빙
		else if(division.equals("DC")) {
			list = goodsService.getbbscategory(division);
			title = "리빙";
		}
		
		System.out.println(list.size());
		
		model.addAttribute("title",title);
		model.addAttribute("bbslist",list);
		
		return "rentallist.tiles";
		
	}
	
	@RequestMapping(value="order.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String order(Model model,orderedDto ordered) throws Exception{
		String id = ordered.getId();
		String g_code = ordered.getG_code();
		
		memberDto member = goodsService.selectMember(id);
		goodsDto goods = goodsService.selectGoods(g_code);

		System.out.println(member.getId() + "00000000000000000000000000000000000000");
		System.out.println(goods.getG_code() + "00000000000000000000000000000000000000");
		
		List<goodsDto> goodsList = new ArrayList<>();
		goodsList.add(goods);
		List<orderedDto> orderList = new ArrayList<>();
		orderList.add(ordered);
		
		model.addAttribute("member",member);
		model.addAttribute("goodsList",goodsList);
		model.addAttribute("orderList",orderList);
		return "order.tiles";
	}
}

