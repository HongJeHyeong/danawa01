package com.danawa.controller.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.database.p_case.dao.CaseDAO;
import com.database.p_cooler.dao.CoolerDAO;
import com.database.p_cpu.dao.CpuDAO;
import com.database.p_cpu.dto.CpuDTO;
import com.database.p_disk.dao.DiskDAO;
import com.database.p_gcard.dao.GcardDAO;
import com.database.p_gcard.dto.GcardDTO;
import com.database.p_mainboard.dao.MainboardDAO;
import com.database.p_mainboard.dto.MainboardDTO;
import com.database.p_power.dao.PowerDAO;
import com.database.p_ram.dao.RamDAO;
import com.database.p_ram.dto.RamDTO;

@Controller
@RequestMapping("/product")
public class ProductController {
	// 박범수, 김인규
	
	@Autowired
	private CpuDAO cpuDAO;
	
	@Autowired
	private MainboardDAO mainboardDAO;
	
	@Autowired
	private GcardDAO gcardDAO;
	
	@Autowired
	private RamDAO ramDAO;
	
	@Autowired
	private CaseDAO caseDAO;
	
	@Autowired
	private CoolerDAO coolerDAO;
	
	@Autowired
	private PowerDAO powerDAO;
	
	@Autowired
	private DiskDAO diskDAO;
	

	// bbb (임시 테스트용 페이지)
	// ---------------------------------------------------------------------------------------------------------
	@RequestMapping("/bbb")
	public ModelAndView bbb() {
		System.out.println("ProductController의 bbb() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();

		mv.setViewName("product/bbb");
		return mv;
	}
	// bbb
	// ---------------------------------------------------------------------------------------------------------

	// ---------------------------------------------------------------------------------------------------------
	// CPU
	@RequestMapping("/cpuForm")
	public ModelAndView cpuForm(HttpServletRequest request) {
		System.out.println("ProductController의 cpuForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();
		
		String str_cpu_no = request.getParameter("cpu_no");
		System.out.println("ProductController의 cpuForm()의 cpu_no String 값="+str_cpu_no);
		
		if(str_cpu_no == null) {
			
		}else {
			int cpu_no = Integer.parseInt(str_cpu_no);
			System.out.println("ProductController의 cpuForm()의 cpu_no 값="+cpu_no);
			
			CpuDTO cpuDTO = cpuDAO.getCpuInfo(cpu_no);
			System.out.println("ProductController의 cpuForm()의 cpuDTO 값="+cpuDTO);
			
			mv.addObject("cpuDTO", cpuDTO);
		}
		mv.setViewName("product/cpuForm");
		return mv;
	}
	// CPU
	// ---------------------------------------------------------------------------------------------------------

	// Mainboard----------------------------------------------------------------------------------------------------
	@RequestMapping("/mainboardForm")
	public ModelAndView mainboardForm(HttpServletRequest request) {
		System.out.println("ProductController의 mainboardForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();
		
		String str_mb_no = request.getParameter("mb_no");
		System.out.println("ProductController의 mainboardForm()의 mb_no String 값="+str_mb_no);
		
		if(str_mb_no == null) {
			
		}else {
			int mb_no = Integer.parseInt(str_mb_no);
			System.out.println("ProductController의 mainboardForm()의 mb_no 값="+mb_no);
			
			MainboardDTO mainboardDTO = mainboardDAO.getMainboardInfo(mb_no);
			System.out.println("ProductController의 mainboardForm()의 mainboardDTO 값="+mainboardDTO);
			
			mv.addObject("mainboardDTO", mainboardDTO);
		}
		mv.setViewName("product/mainboardForm");
		return mv;
	}
	// Mainboard----------------------------------------------------------------------------------------------------

	// Gcard--------------------------------------------------------------------------------------------------------
	@RequestMapping("/gcardForm")
	public ModelAndView gcardForm(HttpServletRequest request) {
		System.out.println("ProductController의 gcardForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();
		
		String str_gc_no = request.getParameter("gc_no");
		System.out.println("ProductController의 gcardForm()의 gc_no String 값="+str_gc_no);
		
		if(str_gc_no == null) {
			
		}else {
			int gc_no = Integer.parseInt(str_gc_no);
			System.out.println("ProductController의 gcardForm()의 gc_no 값="+gc_no);
			
			GcardDTO gcardDTO = gcardDAO.getGcardInfo(gc_no);
			System.out.println("ProductController의 gcardForm()의 gcardDTO 값="+gcardDTO);
			
			mv.addObject("gcardDTO", gcardDTO);
		}
		mv.setViewName("product/gcardForm");
		return mv;
	}
	// Gcard--------------------------------------------------------------------------------------------------------

	// Ram----------------------------------------------------------------------------------------------------------
	@RequestMapping("/ramForm")
	public ModelAndView ramForm(HttpServletRequest request) {
		System.out.println("ProductController의 ramForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();
		
		String str_ram_no = request.getParameter("ram_no");
		System.out.println("ProductController의 ramForm()의 ram_no String 값="+str_ram_no);
		
		if(str_ram_no == null) {
			
		}else {
			int ram_no = Integer.parseInt(str_ram_no);
			System.out.println("ProductController의 ramForm()의 ram_no 값="+ram_no);
			
			RamDTO ramDTO = ramDAO.getRamInfo(ram_no);
			System.out.println("ProductController의 RamForm()의 ramDTO 값="+ramDTO);
			
			mv.addObject("ramDTO", ramDTO);
		}
		mv.setViewName("product/ramForm");
		return mv;
	}
	// Ram----------------------------------------------------------------------------------------------------------

	// Power--------------------------------------------------------------------------------------------------------
	@RequestMapping("/powerForm")
	public ModelAndView powerForm() {
		System.out.println("ProductController의 powerForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();

		return mv;
	}
	// Power--------------------------------------------------------------------------------------------------------

	// Case---------------------------------------------------------------------------------------------------------
	@RequestMapping("/caseForm")
	public ModelAndView caseForm() {
		System.out.println("ProductController의 caseForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();

		return mv;
	}
	// Case---------------------------------------------------------------------------------------------------------

	// Cooler-------------------------------------------------------------------------------------------------------
	@RequestMapping("/coolerForm")
	public ModelAndView coolerForm() {
		System.out.println("ProductController의 coolerForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();

		return mv;
	}
	// Cooler-------------------------------------------------------------------------------------------------------

	// Disk---------------------------------------------------------------------------------------------------------
	@RequestMapping("/diskForm")
	public ModelAndView diskForm() {
		System.out.println("ProductController의 diskForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();

		return mv;
	}
	// Disk---------------------------------------------------------------------------------------------------------

}