package com.campmall.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.campmall.service.ProductServiceImpl;
import com.campmall.vo.CpmProductVO;

@Controller
public class ProductController {
	
	@Autowired
	private ProductServiceImpl productService;
	
	/**
	 * product.do : 상품 상세 정보
	 */
	@RequestMapping(value="/product/product.do", method=RequestMethod.GET)
	public ModelAndView product(String pid) {
		ModelAndView mv = new ModelAndView();
		
		CpmProductVO vo = productService.getContent(pid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/product/product");
		return mv;
	}
	
	/**
	 * special.do : 특가상품
	 */
	@RequestMapping(value="/product/special.do", method=RequestMethod.GET)
	public ModelAndView special(String event) {
		ModelAndView mv = new ModelAndView();

		ArrayList<CpmProductVO> list = productService.getList(event);
		
		mv.addObject("list", list);
		mv.setViewName("/product/special");
		return mv;
	}
	
	/**
	 * best.do : 베스트 상품
	 */
	@RequestMapping(value="/product/best.do", method=RequestMethod.GET)
	public ModelAndView best(String event) {
		ModelAndView mv = new ModelAndView();
		
		ArrayList<CpmProductVO> list = productService.getList(event);
		
		mv.addObject("list", list);
		mv.setViewName("/product/best");
		return mv;
	}
	
	/**
	 * new.do : 신상품
	 */
	@RequestMapping(value="/product/new.do", method=RequestMethod.GET)
	public ModelAndView new_product(String event) {
		ModelAndView mv = new ModelAndView();
		
		ArrayList<CpmProductVO> list = productService.getList(event);
		
		mv.addObject("list", list);
		mv.addObject("newProduct", "newProduct");
		mv.setViewName("/product/new");
		return mv;
	}
	
	/**
	 * pick.do : 추천상품
	 */
	@RequestMapping(value="/product/pick.do", method=RequestMethod.GET)
	public ModelAndView pick(String event) {
		ModelAndView mv = new ModelAndView();

		ArrayList<CpmProductVO> list = productService.getList(event);
		
		mv.addObject("list", list);
		mv.setViewName("/product/pick");
		return mv;
	}
	
	/**
	 * detail : 세부 카테고리별 상품 출력
	 */
	@RequestMapping(value="/product/detail.do", method=RequestMethod.GET)
	public ModelAndView detail(String event, String category) {
		ModelAndView mv = new ModelAndView();
		
		CpmProductVO vo = new CpmProductVO();
		
		vo.setEvent(event);
		vo.setCategory(category);
		
		ArrayList<CpmProductVO> list = productService.getDetailList(vo);
		
		mv.addObject("list", list);
		mv.setViewName("/product/new");
		return mv;
	}
	
}
