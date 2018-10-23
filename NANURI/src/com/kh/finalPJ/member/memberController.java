package com.kh.finalPJ.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class memberController {

	@Autowired
	private memberService memberservice;

	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login() {
		return "login.tiles";
	}

	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest req) {
		req.getSession().invalidate();
		return "login.tiles";
	}

	@RequestMapping(value = "regi.do", method = RequestMethod.GET)
	public String signUp() {
		return "regist.tiles";
	}

	@ResponseBody
	@RequestMapping(value = "loginAf.do", method = RequestMethod.POST)
	public Map<Object, Object> loginAf(HttpServletRequest req, memberDto mem) throws Exception {
		Map<Object, Object> map = new HashMap<>();
		memberDto login = null;
		login = memberservice.login(mem);
		if (login != null && !login.getId().equals("")) {
			req.getSession().setAttribute("login", login);
			map.put("cnt", 1);
		} else {
			req.getSession().invalidate();
			map.put("cnt", 0);
		}
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "idCheck.do", method = RequestMethod.POST)
	public Map<Object, Object> idCheck(String id) throws Exception {
		int cnt = 0;
		Map<Object, Object> map = new HashMap<>();
		cnt = memberservice.idCheck(id);
		map.put("cnt", cnt);
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "nickCheck.do", method = RequestMethod.POST)
	public Map<Object, Object> nickCheck(String nickname) throws Exception {
		int cnt = 0;
		Map<Object, Object> map = new HashMap<>();
		cnt = memberservice.nickCheck(nickname);
		map.put("cnt", cnt);
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "emailCheck.do", method = RequestMethod.POST)
	public Map<Object, Object> emailCheck(String email) throws Exception {
		int cnt = 0;
		Map<Object, Object> map = new HashMap<>();
		cnt = memberservice.emailCheck(email);
		map.put("cnt", cnt);
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "regiAf.do", method = RequestMethod.POST)
	public Map<String, Integer> regiAf(memberDto mem) throws Exception {
		Map<String, Integer> map = new HashMap<>();
		boolean isS = memberservice.addMember(mem);
		if (isS) {
			map.put("cnt", 1);
		} else {
			map.put("cnt", 0);
		}
		return map;
	}

	@RequestMapping(value = "mypage.do", method = RequestMethod.GET)
	public String mypage() {
		return "mypage.tiles";
	}

	@RequestMapping(value = "userUpdate.do", method = RequestMethod.GET)
	public String userUpdate() {
		return "userUpdate.tiles";
	}

	@ResponseBody
	@RequestMapping(value = "userUpdateAf.do", method = RequestMethod.POST)
	public Map<String, Integer> userUpdateAf(memberDto mem, HttpServletRequest req) throws Exception {
		Map<String, Integer> map = new HashMap<>();
		System.out.println(mem.toString());
		boolean isS = memberservice.userUpdateAf(mem);
		if (isS) {
			req.getSession().invalidate();
			memberDto login = null;
			login = memberservice.login(mem);
			if (login != null && !login.getId().equals("")) {
				req.getSession().setAttribute("login", login);
			} else {
				req.getSession().invalidate();
			}
			map.put("cnt", 1);
		} else {
			map.put("cnt", 0);
		}
		return map;
	}

	@RequestMapping(value = "secession.do", method = RequestMethod.GET)
	public String secession() {
		return "secession.tiles";
	}

	@ResponseBody
	@RequestMapping(value = "secessionAf.do", method = RequestMethod.POST)
	public Map<String, Integer> secessionAf(secessionDto sec, HttpServletRequest req) throws Exception {
		Map<String, Integer> map = new HashMap<>();
		boolean isS = memberservice.secessionAf(sec);
		if (isS) {
			req.getSession().invalidate();
			map.put("cnt", 1);
		} else {
			map.put("cnt", 0);
		}
		return map;
	}

	@RequestMapping(value = "rentalList.do", method = RequestMethod.GET)
	public String rentalList() {
		return "rentalList.tiles";
	}

	@RequestMapping(value = "basketList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String basketList(HttpServletRequest req, Model model) throws Exception {
		memberDto mem = (memberDto) req.getSession().getAttribute("login");
		String id = mem.getId();
		List<basketListDto> list = memberservice.getBasketList(id);
		if (list.size() < 1) {
			System.out.println("장바구니 리스트를 가져올 수 없습니다");
			model.addAttribute("basketList", 0);
		}
		model.addAttribute("list", list);
		return "basketList.tiles";
	}
}
