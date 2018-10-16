package com.kh.finalPJ.common;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.finalPJ.member.memberDto;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	/**
	 * 세션만료 시 로그인페이지로 이동한다.
	 * 
	 * @return true(요청한 controller 호출), false(로그인페이지로 이동)
	 * @description 로그인, 로그인처리 페이지를 제외한 나머지 페이지에서 controller 호출 전에 세션유무를 파악하여 페이지
	 *              이동시킨다.
	 * @exception Exception
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		memberDto userInfo = (memberDto) request.getSession().getAttribute("login"); // 로그인 사용자 세션정보
		String requestURI = request.getRequestURI(); // 요청 URI

		System.out.println(requestURI + " - " + new Date()); // url : check

		if (requestURI.indexOf("/main.do") > -1) {
			return true;
		} else if (requestURI.indexOf("/login.do") > -1) {
			return true;
		} else if (requestURI.indexOf("/regi.do") > -1) {
			return true;
		} else if (requestURI.indexOf("/loginAf.do") > -1) {
			return true;
		} else if (requestURI.indexOf("/idCheck.do") > -1) {
			return true;
		} else if (requestURI.indexOf("/nickCheck.do") > -1) {
			return true;
		} else if (requestURI.indexOf("/emailCheck.do") > -1) {
			return true;
		} else if (requestURI.indexOf("/regiAf.do") > -1) {
			return true;
		}else if (requestURI.indexOf("/rentallist.do") > -1) {
			return true;
		}else if (requestURI.indexOf("/goodsdetail.do") > -1) {
			return true;
		}else if (requestURI.indexOf("/findtitle.do") > -1) {
			return true;
		}else if (requestURI.indexOf("/findchecked.do") > -1) {
			return true;
		}else {
			// 위의 예외페이지 외에는 세션값을 체크해서 있으면 그냥 페이지표시
			if (userInfo != null && !userInfo.getId().equals("")) {
				return true;
			} else {
				// 정상적인 세션정보가 없으면 로그인페이지로 이동
				ModelAndView modelAndView = new ModelAndView("redirect:/login.do");
				throw new ModelAndViewDefiningException(modelAndView);
			}
		}
	}
}
