package com.kh.finalPJ.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.finalPJ.common.controller;

@Controller
public class adminController {

	private static final Logger logger = LoggerFactory.getLogger(controller.class);
	
	@RequestMapping(value="admin.do",method = RequestMethod.GET)
	public String test(Model model) throws Exception{
		return "adminMain.tiles";
	}
}
