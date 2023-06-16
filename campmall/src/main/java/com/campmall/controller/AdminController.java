package com.campmall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.campmall.service.ProductServiceImpl;
import com.campmall.vo.CpmProductVO;

@Controller
public class AdminController {

	@Autowired
	private ProductServiceImpl productService;
	
	/**
	 * admin.do : 관리자 페이지 호출
	 */
	@RequestMapping(value="/admin.do", method=RequestMethod.GET)
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/admin");
		return mv;
	}
	
	/**
	 * admin_product_list.do : 상품 목록 호출
	 */
	@RequestMapping(value="/admin_product_list.do", method=RequestMethod.GET)
	public ModelAndView adminProductList() {
		ModelAndView mv = new ModelAndView();

		ArrayList<CpmProductVO> list = productService.getList(); 
		
		for(int i=0; i<list.size(); i++) {
			String category = list.get(i).getCategory();
			
			if("vr".equals(category)) {

				list.get(i).setCategory("듀랑고VR");
				
			} else if("tent".equals(category)) {

				list.get(i).setCategory("텐트-타프");
				
			} else if("bed".equals(category)) {

				list.get(i).setCategory("침낭-매트");
				
			} else if("furniture".equals(category)) {

				list.get(i).setCategory("퍼니처");
				
			} else if("rt".equals(category)) {

				list.get(i).setCategory("라이팅");
				
			} else if ("bbq".equals(category)) {
				
				list.get(i).setCategory("화로-BBQ");
				
			} else if("kitchen".equals(category)) {

				list.get(i).setCategory("키친");
				
			} else if("season".equals(category)) {

				list.get(i).setCategory("계절용품");
				
			} else if("storage".equals(category)) {

				list.get(i).setCategory("스토리지");
				
			} else if("rv".equals(category)) {

				list.get(i).setCategory("RV용품");
				
			} else if("acc".equals(category)) {

				list.get(i).setCategory("악세서리");
				
			} else if ("mt".equals(category)) {

				list.get(i).setCategory("밀리터리");
				
			}
		}
		
		for(int i=0; i<list.size(); i++) {
			String event = list.get(i).getEvent();
			
			if("best".equals(event)) {

				list.get(i).setEvent("베스트");
				
			} else if("newProduct".equals(event)) {

				list.get(i).setEvent("신상품");
				
			} else if("special".equals(event)) {

				list.get(i).setEvent("특가상품");
				
			} else if("pick".equals(event)) {

				list.get(i).setEvent("추천상품");
				
			}
		}
		
		mv.addObject("list", list);
		mv.setViewName("/admin/admin_product/admin_product_list");
		return mv;
	}
	
	/**
	 * admin_product_write.do : 상품 등록
	 */
	@RequestMapping(value="/admin_product_write.do", method=RequestMethod.GET)
	public ModelAndView adminProductWrite() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/admin_product/admin_product_write");
		return mv;
	}
	
	/**
	 * prdWrite.do
	 */
	@RequestMapping(value="/prdWrite.do", method=RequestMethod.POST)
	public ModelAndView prdWrite(CpmProductVO vo) {
		ModelAndView mv = new ModelAndView();
		
		int result = productService.getSaveResult(vo);
		
		
		if(result == 1){
			mv.addObject("save_result","ok");
			mv.setViewName("redirect:/admin_product_list.do");
		}else{
			mv.setViewName("errorPage");
		}
		
		
		return mv;
	}
	
	/**
	 * admin_product_update.do : 상품 수정
	 */
	@RequestMapping(value="/admin_product_update.do", method=RequestMethod.GET)
	public ModelAndView adminProductUpdate(String pid) {
		ModelAndView mv = new ModelAndView();
		CpmProductVO vo = productService.getContent(pid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_product/admin_product_update");
		
		return mv;
	}
	
	/**
	 * prdUpdate.do : 상품 수정
	 */
	@RequestMapping(value="/prdUpdate.do", method=RequestMethod.POST)
	public ModelAndView prdUpdate(CpmProductVO vo, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		//String old_filename = vo.getNsfile();	//����ȭ�鿡�� hidden���� �Ѿ���� ���� upload ������ ����� ���ϸ�
		
		//vo = fileService.update_fileCheck(vo);
		
		int result = productService.getUpdate(vo);
		
		if(result == 1){
			//fileService.update_filesave(vo, request, old_filename);
		
			mv.setViewName("redirect:/admin_product_list.do");
		}else{
		
			mv.setViewName("errorPage");
		}		
		
		return mv;
	}
	
	/**
	 * admin_product_delete.do : 상품 삭제
	 */
	@RequestMapping(value="/admin_product_delete.do", method=RequestMethod.GET)
	public ModelAndView adminProductDelete(String pid) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("pid", pid);
		mv.setViewName("/admin/admin_product/admin_product_delete");
		return mv;
	}
	
	/**
	 * prdDelete.do : 상품 삭제
	 */
	@RequestMapping(value="/prdDelete.do", method=RequestMethod.POST)
	public ModelAndView prdDelete(String pid, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = productService.getDelete(pid);
		
		if(result == 1) {
			mv.setViewName("redirect:/admin_product_list.do");
		}
		
		return mv;
	}
}
