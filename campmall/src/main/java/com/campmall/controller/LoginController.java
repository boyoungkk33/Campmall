package com.campmall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.campmall.service.MemberServiceImpl;
import com.campmall.vo.CpmMemberVO;
import com.campmall.vo.SessionVO;

@Controller
public class LoginController {

	@Autowired
	private MemberServiceImpl memberService;
	
	/**
	 * login.do
	 */
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public ModelAndView login(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/login/login");
		return mv;
	}
	
	/**
	 * loginCheck.do
	 */
	@RequestMapping(value="/loginCheck.do", method=RequestMethod.POST)
	public ModelAndView loginCheck(CpmMemberVO vo, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		SessionVO svo = memberService.getLoginResult(vo); 
		
		if(svo != null) {
			if(svo.getLoginresult() == 1){
				//session.setAttribute("sid", vo.getId());
				session.setAttribute("svo", svo);
				mv.addObject("login_result","ok");
				mv.setViewName("index");
			}
		}else{
			mv.addObject("login_result","fail");
			mv.setViewName("/login/login");
		}
				
		return mv;
	}
	
	/**
	 * logout.do : �α׾ƿ�
	 */
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		
		if(svo != null) {
			session.invalidate();
			mv.addObject("logout_result","ok");
		}
		
		mv.setViewName("/index");
		
		return mv;
		
	}
	
}
