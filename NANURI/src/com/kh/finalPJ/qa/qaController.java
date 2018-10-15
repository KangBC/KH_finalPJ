package com.kh.finalPJ.qa;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class qaController {

	private static final Logger logger = LoggerFactory.getLogger(qaController.class);

	
	@Autowired
	qaService QaService;

	@RequestMapping(value = "qnalist.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String getQaList(Model model) {
		
		logger.info("qaController getQaList" + new Date());

		List<qaDto> qalist = QaService.getQaList();
		model.addAttribute("qalist", qalist);

		return "qalist.tiles";
	}
	
	@RequestMapping(value = "qaWrite.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String qaWrite() {
		
		logger.info("qaController qaWrite" + new Date());

		return "qaWrite.tiles";
	}
	
	@RequestMapping(value = "qaWriteAf.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String qaWriteAf(HttpServletRequest req, qaDto dto) {
		
		logger.info("qaController qaWriteAf" + new Date());
		
		String b = req.getParameter("secret");
		
		logger.info("qaController qaWriteAf" + b);
		
		
		
		return "qalist.tiles";
	}
}



















