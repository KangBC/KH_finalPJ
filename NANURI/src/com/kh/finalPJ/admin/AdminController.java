package com.kh.finalPJ.admin;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.finalPJ.common.controller;
import com.kh.finalPJ.goods.goodsDto;
import com.kh.finalPJ.member.memberDto;
import com.kh.finalPJ.member.secessionDto;

@Controller
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(controller.class);
	
	@Autowired
	AdminServiece adminserviece;
	
	@RequestMapping(value="admin.do",method = RequestMethod.GET)
	public String admin(Model model) throws Exception{
		return "adminMain.tiles";
	}
	
	@RequestMapping(value="manageMember.do",method = RequestMethod.GET)
	public String manageMember(Model model) throws Exception{
		List<memberDto> memberlist = adminserviece.getMemberList();
		model.addAttribute("memberlist",memberlist);
		
		return "memberList.tiles";
	}
	
	@RequestMapping(value="approve.do",method = RequestMethod.GET)
	public String approve(Model model) throws Exception{
		List<secessionDto> secessionList = adminserviece.getSecessionList();
		model.addAttribute("secessionList",secessionList);
		
		return "approve.tiles";
	}
	
	@RequestMapping(value="finalSecession.do",method = RequestMethod.GET)
	public String finalSecession(String id,Model model) throws Exception{
		if(adminserviece.finalSecession(id)) {
			logger.info(id + " 회원 탈퇴 성공!" + new Date());
		}
		
		return "redirect:/approve.do";
	}
	
	@RequestMapping(value="manageStock.do",method = RequestMethod.GET)
	public String manageStock(Model model) throws Exception{
		List<goodsDto> goodsList = adminserviece.getGoodsList();
		model.addAttribute("goodsList",goodsList);
		
		return "stock.tiles";
	}

	@RequestMapping(value="goodsRegist.do",method = RequestMethod.GET)
	public String goodsRegist(goodsDto goods, Model model) throws Exception{
		
		adminserviece.goodsRegist(goods);
		
		List<goodsDto> goodsList = adminserviece.getGoodsList();
		model.addAttribute("goodsList",goodsList);

		return "stock.tiles";
	}

	@ResponseBody
	@RequestMapping(value="stockUpdate.do",method = RequestMethod.GET)
	public String stockUpdate(String g_code,int change,String changeAf,Model model) throws Exception{
		logger.info(g_code);
		logger.info(changeAf);
		logger.info(change+"");
		switch (change) {
			case 1:
				break;
			case 3:
				break;
			case 5:
				break;
			case 7:
				break;
			case 9:
				break;
		}
		return "true";
	}
	
	@RequestMapping(value="goodsApply.do",method = RequestMethod.GET)
	public String goodsApply(Model model) throws Exception{
		return "goodsApply.tiles";
	}
}
