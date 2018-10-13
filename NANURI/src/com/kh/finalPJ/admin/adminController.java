package com.kh.finalPJ.admin;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.finalPJ.common.controller;
import com.kh.finalPJ.member.memberDto;

@Controller
public class adminController {

	private static final Logger logger = LoggerFactory.getLogger(controller.class);
	
	@Autowired
	adminServiece adminserviece;
	
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
	
	@RequestMapping(value="manageStock.do",method = RequestMethod.GET)
	public String manageStock(Model model) throws Exception{
		return "stock.tiles";
	}
	
	@RequestMapping(value="goodsApply.do",method = RequestMethod.GET)
	public String goodsApply(Model model) throws Exception{
		return "goodsApply.tiles";
	}
	
}
