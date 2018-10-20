package com.kh.finalPJ.admin;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	// 관리자 메인 화면
	@RequestMapping(value="admin.do",method = RequestMethod.GET)
	public String admin(Model model) throws Exception{
		return "adminMain.tiles";
	}
	
	// 회원관리 뷰
	@RequestMapping(value="manageMember.do",method = RequestMethod.GET)
	public String manageMember(Model model) throws Exception{
		List<memberDto> memberlist = adminserviece.getMemberList();
		model.addAttribute("memberlist",memberlist);
		
		return "memberList.tiles";
	}
	
	// 회원탈퇴 승인 뷰
	@RequestMapping(value="approve.do",method = RequestMethod.GET)
	public String approve(Model model) throws Exception{
		List<secessionDto> secessionList = adminserviece.getSecessionList();
		model.addAttribute("secessionList",secessionList);
		
		return "approve.tiles";
	}
	
	// 회원 탈퇴 승인 기능
	@RequestMapping(value="finalSecession.do",method = RequestMethod.GET)
	public String finalSecession(String id,Model model) throws Exception{
		if(adminserviece.finalSecession(id)) {
			logger.info(id + " 회원 탈퇴 성공!" + new Date());
		}
		
		return "redirect:/approve.do";
	}
	
	// 재고 관리 뷰
	@RequestMapping(value="manageStock.do",method = RequestMethod.GET)
	public String manageStock(Model model) throws Exception{
		List<goodsDto> goodsList = adminserviece.getGoodsList();
		model.addAttribute("goodsList",goodsList);
		
		return "stock.tiles";
	}

	// 재고 관리 : 상품 등록 기능
	// 이미지 파일 이름 : 상품코드Main.확장자 
	@RequestMapping(value="goodsRegist.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String goodsRegist(HttpServletRequest req,goodsDto goods, Model model) throws Exception{
		
		String fpost= ".jpg";
		if(goods.getG_imgF().getOriginalFilename().indexOf(".") >=0) {
			fpost = goods.getG_imgF().getOriginalFilename().substring( goods.getG_imgF().getOriginalFilename().indexOf(".") );
		}
		
		String filename = goods.getG_code() + "Main" + fpost;
		String fupload = req.getServletContext().getRealPath("/resources/img/main_img");
		
		try {
			File file = new File(fupload + "/" + filename);
			FileUtils.writeByteArrayToFile(file, goods.getG_imgF().getBytes());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		goods.setG_img(filename);
		
		boolean b = adminserviece.goodsRegist(goods);
		if(b) System.out.println("등록 성공!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		
		List<goodsDto> goodsList = adminserviece.getGoodsList();
		model.addAttribute("goodsList",goodsList);
		
		return "stock.tiles";
	}

	@ResponseBody
	@RequestMapping(value="stockUpdate.do",method = {RequestMethod.GET, RequestMethod.POST})
	public Boolean stockUpdate(@RequestBody Map<String, Object> map) throws Exception{
		System.out.println(map.get("g_code"));
		System.out.println(map.get("change"));
		System.out.println(map.get("changeAf"));
		boolean b = false;
		if(map.get("change").equals("g_quantity")) {
			b = adminserviece.quantityUpdate(map);
		}
		else{
			b = adminserviece.stockUpdate(map);
		}

		return b;
	}
	
	@RequestMapping(value="goodsApply.do",method = RequestMethod.GET)
	public String goodsApply(Model model) throws Exception{
		return "goodsApply.tiles";
	}
}
