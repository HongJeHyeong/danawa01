package com.danawa.controller.product;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.database.p_case.dao.CaseDAO;
import com.database.p_case.dto.CaseDTO;
import com.database.p_cooler.dao.CoolerDAO;
import com.database.p_cooler.dto.CoolerDTO;
import com.database.p_cpu.dao.CpuDAO;
import com.database.p_cpu.dto.CpuDTO;
import com.database.p_disk.dao.DiskDAO;
import com.database.p_disk.dto.DiskDTO;
import com.database.p_gcard.dao.GcardDAO;
import com.database.p_gcard.dto.GcardDTO;
import com.database.p_mainboard.dao.MainboardDAO;
import com.database.p_mainboard.dto.MainboardDTO;
import com.database.p_power.dao.PowerDAO;
import com.database.p_power.dto.PowerDTO;
import com.database.p_ram.dao.RamDAO;
import com.database.p_ram.dto.RamDTO;

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
	
	
	@RequestMapping("/caseSearch")
	public String caseSearch() {
		return "/p_list/caseSearch";
	}
	@RequestMapping("/caseList")
	public ModelAndView caseList(int caseLeng) {
		List<CaseDTO> list = p_caseDAO.getCaseList(caseLeng);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/p_list/caseList");
		return mv;
	}
	
	
	@RequestMapping("/coolerSearch")
	public String coolerSearch() {
		return "/p_list/coolerSearch";
	}
	@RequestMapping("/coolerList")
	public ModelAndView coolerList(@RequestParam String type) {
		
		List<CoolerDTO> list = p_coolerDAO.getCoolerList(type);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",list);
		mv.setViewName("/p_list/coolerList");
		return mv;
	}
	
	@RequestMapping("/cpuSearch")
	public String cpuSearch() {
		return "/p_list/cpuSearch";
	}
	@RequestMapping("/cpuList")
	public ModelAndView cpuList(@RequestParam String company) {
		List<CpuDTO> list = p_cpuDAO.getCpuList(company);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",list);
		mv.setViewName("/p_list/cpuList");
		return mv;
	}
	
	@RequestMapping("/diskSearch")
	public String diskSearch() {
		return "/p_list/diskSearch";
	}
	@RequestMapping("/diskList")
	public ModelAndView diskList(@RequestParam String disk_category) {
		/*System.out.println(disk_category);*/
		
		List<DiskDTO> list = p_diskDAO.getDiskList(disk_category);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/p_list/diskList");
		return mv;
	}
	
	@RequestMapping("/gcardSearch")
	public String gcardSearch(Model model) {
		List<String> list = p_gcardDAO.getGcardChipsetList();
		
		System.out.println("list size = "+list.size());
		
		model.addAttribute("list",list);
		
		return "/p_list/gcardSearch";
	}
	
	@RequestMapping("/gcardList")
	public ModelAndView gcardList(@RequestParam String gc_chipset) {
		System.out.println(gc_chipset);
		
		List<GcardDTO> list = p_gcardDAO.getGcardList(gc_chipset);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",list);
		mv.setViewName("/p_list/gcardList");
		return mv;
	}
	
	@RequestMapping("/mbSearch")
	public String mbSearch(Model model) {
		List<String> list = p_mainboardDAO.getMainboardSocketList();
		
		model.addAttribute("list",list);
		
		return "/p_list/mbSearch";
		
	}
	@RequestMapping("/mbList")
	public ModelAndView mbList(@RequestParam String socket) {
		
		List<MainboardDTO> list = p_mainboardDAO.getMainboard(socket);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",list);
		mv.setViewName("/p_list/mbList");
		return mv;
	}
	
	@RequestMapping("powerSearch")
	public String powerSearch() {
		return "/p_list/powerSearch";
	}
	@RequestMapping("/powerList")
	public ModelAndView powerList(@RequestParam int capacity) {
		
		List<PowerDTO> list = p_powerDAO.getPowerList(capacity);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",list);
		mv.setViewName("/p_list/powerList");
		return mv;
	}
	
	
	@RequestMapping("ramSearch")
	public String ramSearch() {
		return "/p_list/ramSearch";
	}
	@RequestMapping("/ramList")
	public ModelAndView ramList(@RequestParam int volume) {
		
		List<RamDTO> list = p_ramDAO.getRamList(volume);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",list);
		mv.setViewName("/p_list/ramList");
		return mv;
	}
	
	
}