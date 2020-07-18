package com.danawa.controller.product;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product")
public class ProductController {
  // 박범수, 김인규
	
	// aaa (임시 테스트용 페이지) ---------------------------------------------------------------------------------------------------------
	@RequestMapping("/form/aaa")
	public ModelAndView aaa(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		//--------------------- 임시 세션
		session.setAttribute("grade", 3);
		System.out.println(session.getAttribute("grade"));
		//---------------------
		
		mv.setViewName("../form/aaa");
		return mv;
	}
	// aaa ---------------------------------------------------------------------------------------------------------
	
	// CPU ---------------------------------------------------------------------------------------------------------
	@RequestMapping("/form/cpuForm")
	public ModelAndView cpuForm() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("../form/cpuForm");
		return mv;
	}
	// CPU ---------------------------------------------------------------------------------------------------------
	
	// Mainboard----------------------------------------------------------------------------------------------------
	@RequestMapping("/form/mainboardForm")
	public ModelAndView mainboardForm() {
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
	// Mainboard----------------------------------------------------------------------------------------------------
	
	// Gcard--------------------------------------------------------------------------------------------------------
	@RequestMapping("/form/gcardForm")
	public void gcardForm() {
		
	}
	// Gcard--------------------------------------------------------------------------------------------------------
	
	// Ram----------------------------------------------------------------------------------------------------------
	@RequestMapping("/form/ramForm")
	public void ramForm() {
		
	}
	// Ram----------------------------------------------------------------------------------------------------------
	
	// Power--------------------------------------------------------------------------------------------------------
	@RequestMapping("/form/powerForm")
	public void powerForm() {
		
	}
	// Power--------------------------------------------------------------------------------------------------------
	
	// Case---------------------------------------------------------------------------------------------------------
	@RequestMapping("/form/caseForm")
	public void caseForm() {
		
	}
	// Case---------------------------------------------------------------------------------------------------------
	
	// Cooler-------------------------------------------------------------------------------------------------------
	@RequestMapping("/form/coolerForm")
	public void coolerForm() {
		
	}
	// Cooler-------------------------------------------------------------------------------------------------------
	
	// Disk---------------------------------------------------------------------------------------------------------
	@RequestMapping("/form/diskForm")
	public void diskForm() {
		
	}
	// Disk---------------------------------------------------------------------------------------------------------
	
	

}