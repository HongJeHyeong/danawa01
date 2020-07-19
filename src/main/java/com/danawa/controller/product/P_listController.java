package com.danawa.controller.product;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.database.p_case.dao.CaseDAO;
import com.database.p_case.dto.CaseDTO;
import com.database.p_cooler.dao.CoolerDAO;
import com.database.p_cpu.dao.CpuDAO;
import com.database.p_disk.dao.DiskDAO;
import com.database.p_disk.dto.DiskDTO;
import com.database.p_gcard.dao.GcardDAO;
import com.database.p_mainboard.dao.MainboardDAO;
import com.database.p_power.dao.PowerDAO;
import com.database.p_ram.dao.RamDAO;

@Controller
@RequestMapping("/p_list")
public class P_listController {
  // 박범수, 김인규
	
	@Autowired
	private CaseDAO p_caseDAO;
	
	@Autowired
	private CoolerDAO p_coolerDAO;
	
	@Autowired
	private CpuDAO p_cpuDAO;
	
	@Autowired
	private DiskDAO p_diskDAO;
	
	@Autowired
	private GcardDAO p_gcardDAO;
	
	@Autowired
	private MainboardDAO p_mainboardDAO;
	
	@Autowired
	private PowerDAO p_powerDAO;
	
	@Autowired
	private RamDAO p_ramDAO;
	
	
	@RequestMapping("/caseList")
	public ModelAndView caseList(int caseLeng) {
		ArrayList<CaseDTO> list = p_caseDAO.getCaseList(caseLeng);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/p_list/caseList");
		return mv;
	}
	
	
	@RequestMapping("/coolerList")
	public ModelAndView coolerList() {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/p_list/coolerList");
		return mv;
	}
	
	@RequestMapping("/cpuList")
	public ModelAndView cpuList() {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/p_list/coolerList");
		return mv;
	}
	
	
	
	
	
	
	@RequestMapping("/diskList")
	public String diskList() {
		return "/p_list/tttt";
	}
	@RequestMapping("/diskListForm")
	public ModelAndView diskListForm(String disk_category) {
		ArrayList<DiskDTO> list = p_diskDAO.getDiskList(disk_category);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/p_list/diskListForm");
		return mv;
	}
	
	
	
	
	
	
	
	@RequestMapping("/gcList")
	public ModelAndView gcList() {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/p_list/gcList");
		return mv;
	}
	
	@RequestMapping("/mbList")
	public ModelAndView mbList() {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/p_list/mbList");
		return mv;
	}
	
	@RequestMapping("/powerList")
	public ModelAndView powerList() {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/p_list/powerList");
		return mv;
	}
	
	@RequestMapping("/ramList")
	public ModelAndView ramList() {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/p_list/ramList");
		return mv;
	}
	
	
}