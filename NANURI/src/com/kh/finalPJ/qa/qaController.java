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
<<<<<<< HEAD
		List<qaDto> adminlist = QaService.getAdminQaList();
		
		model.addAttribute("qalist", qalist);
		model.addAttribute("adminlist", adminlist);
		
=======
		model.addAttribute("qalist", qalist);

>>>>>>> 07c51705499b17948845aa34181a558d602af929
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
		
<<<<<<< HEAD
		boolean c = dto.isCheck(); // 체크박스 체크여부확인
		
		if(c) {
			dto.setSecret(1);
		}else {
			dto.setSecret(0);
		}
		
		boolean b = QaService.QaWrite(dto);
		if(b) {
		
		return "redirect:/qnalist.do";
		
		}else {
			return "redirect:/qaWrite.do";
		}
	} 
	
	// 디테일 후기 할때도 이함수 사용하면됨
	@RequestMapping(value = "ansWrite.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String ansWrite(int ref,String g_code,Model model) {
		
		logger.info("qaController ansWrite" + new Date());
		
		qaDto ansdto = new qaDto(ref, g_code);
		model.addAttribute("ansdto", ansdto);
		
		return "ansWrite.tiles";
	}	
	
	@RequestMapping(value = "ansWriteAf.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String ansWriteAf(qaDto dto,Model model) {
		
		logger.info("qaController ansWriteAf" + new Date());
				
		/*로그인 뷰랑 합치면 뷰에서 아이디 세션값 보내는거, qa.xml 쿼리문 아이디 바꾸기 */
		boolean b = QaService.ansWrite(dto);
		
		if(b) {
			return "redirect:/qnalist.do";
		}else {
			return "redirect:/ansWriteAf.do";
		}
	}
	
	@RequestMapping(value = "qaAdminWrite.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String qaAdminWrite(Model model) {
		
		logger.info("qaController qaAdminWrite" + new Date());
		
		return "qaAdminWrite.tiles";
	}
	
	@RequestMapping(value = "qaAdminWriteAf.do", method = { RequestMethod.GET, RequestMethod.POST })	
	public String qaAdminWriteAf(qaDto dto,Model model) {
		
		logger.info("qaController qaAdminWriteAf" + new Date());
		
		boolean b = QaService.qaAdminWrite(dto);
		
		if(b) {		
			return "redirect:/qnalist.do";
		}else {
			return "redirect:/qaAdminWriteAf.do";
		}
=======
		String b = req.getParameter("secret");
		
		logger.info("qaController qaWriteAf" + b);
		
		
		
		return "qalist.tiles";
>>>>>>> 07c51705499b17948845aa34181a558d602af929
	}
}



















