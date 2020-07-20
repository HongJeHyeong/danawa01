package com.danawa.controller.product;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.danawa.util.FileUtil;
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
			mv.addObject("job", "등록 페이지");
			
		}else {
			int cpu_no = Integer.parseInt(str_cpu_no);
			System.out.println("ProductController의 cpuForm()의 cpu_no 값="+cpu_no);
			
			CpuDTO cpuDTO = cpuDAO.getCpuInfo(cpu_no);
			System.out.println("ProductController의 cpuForm()의 cpuDTO 값="+cpuDTO);
			
			mv.addObject("job", "수정 페이지");
			mv.addObject("cpuDTO", cpuDTO);
		}
		mv.setViewName("product/cpuForm");
		return mv;
	}
	
	@RequestMapping("/insertCpu")
	public ModelAndView insertCpu(CpuDTO cpuDTO) {
		System.out.println("ProductController의 insertCpu() 메소드 호출 ----");
		System.out.println("ProductController의 insertCpu() 메소드의 cpuDTO 값="+cpuDTO);
		
		String path = "D:\\danawaImages\\cpu";
		
		String oriName = cpuDTO.getFile().getOriginalFilename();
		//원본파일명
		
		int endIndex = oriName.lastIndexOf(".");
		//원본파일명 aa.png 인덱스 
		
		String fileN = "CPU";
		//파일명을 CPU로 변환하기 위한 변수명
		String extN = oriName.substring(endIndex+1);
		//파일확장자 변수명
		
		String changeName = fileN+"."+extN;
		//새로운 파일명으로 바뀐 변수
		
		String saveName = FileUtil.rename(path, changeName);
		System.out.println(saveName);
		
		File file = new File(path+saveName);
		
		try {
			cpuDTO.getFile().transferTo(file);
		} catch (Exception e) {
			System.out.println("파일 복사 에러=" + e);
		}
		
		cpuDTO.setCpu_image(saveName);
		
		cpuDAO.insertCpu(cpuDTO);
		
		ModelAndView mv = new ModelAndView();
		RedirectView rv = new RedirectView("../product/bbb");
		
		mv.setView(rv);
		return mv;
	}
	
	@RequestMapping("/updateCpu")
	public ModelAndView updateProc(CpuDTO cpuDTO) {
		System.out.println("ProductController의 updateCpu() 메소드 호출 ----");
		System.out.println("ProductController의 updateCpu()의 cpuDTO 값="+cpuDTO);
		ModelAndView mv = new ModelAndView();
		
		String path = "D:\\danawaImages\\cpu";
		
		String oriName = cpuDTO.getFile().getOriginalFilename();
		//원본파일명
		
		int endIndex = oriName.lastIndexOf(".");
		//원본파일명 aa.png 인덱스 
		
		String fileN = "CPU";
		//파일명을 CPU로 변환하기 위한 변수명
		String extN = oriName.substring(endIndex+1);
		//파일확장자 변수명
		
		String changeName = fileN+"."+extN;
		//새로운 파일명으로 바뀐 변수
		
		String saveName = FileUtil.rename(path, changeName);
		System.out.println(saveName);
		
		File file = new File(path+saveName);
		
		try {
			cpuDTO.getFile().transferTo(file);
		} catch (Exception e) {
			System.out.println("파일 복사 에러=" + e);
		}
		
		cpuDTO.setCpu_image(saveName);
		
		cpuDAO.updateCpu(cpuDTO);
		
		RedirectView rv = new RedirectView("../product/bbb");
		mv.setView(rv);
		
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
			mv.addObject("job", "등록 페이지");
		}else {
			int mb_no = Integer.parseInt(str_mb_no);
			System.out.println("ProductController의 mainboardForm()의 mb_no 값="+mb_no);
			
			MainboardDTO mainboardDTO = mainboardDAO.getMainboardInfo(mb_no);
			System.out.println("ProductController의 mainboardForm()의 mainboardDTO 값="+mainboardDTO);
			
			mv.addObject("job", "수정 페이지");
			mv.addObject("mainboardDTO", mainboardDTO);
		}
		mv.setViewName("product/mainboardForm");
		return mv;
	}
	
	@RequestMapping("/insertMainboard")
	public ModelAndView insertMainboard(MainboardDTO mainboardDTO) {
		System.out.println("ProductController의 insertMainboard() 메소드 호출 ----");
		System.out.println("ProductController의 insertMainboard() 메소드의 mainbardDTO 값="+mainboardDTO);
		
		String path = "D:\\danawaImages\\mainboard";
		
		String oriName = mainboardDTO.getFile().getOriginalFilename();
		//원본파일명
		
		int endIndex = oriName.lastIndexOf(".");
		//원본파일명 aa.png 인덱스 
		
		String fileN = "MAINBOARD";
		//파일명을 CPU로 변환하기 위한 변수명
		String extN = oriName.substring(endIndex+1);
		//파일확장자 변수명
		
		String changeName = fileN+"."+extN;
		//새로운 파일명으로 바뀐 변수
		
		String saveName = FileUtil.rename(path, changeName);
		System.out.println(saveName);
		
		File file = new File(path+saveName);
		
		try {
			mainboardDTO.getFile().transferTo(file);
		} catch (Exception e) {
			System.out.println("파일 복사 에러=" + e);
		}
		
		mainboardDTO.setMb_image(saveName);
		
		mainboardDAO.insertMainboard(mainboardDTO);
		
		ModelAndView mv = new ModelAndView();
		RedirectView rv = new RedirectView("../product/bbb");
		
		mv.setView(rv);
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
			mv.addObject("job", "등록 페이지");
		}else {
			int gc_no = Integer.parseInt(str_gc_no);
			System.out.println("ProductController의 gcardForm()의 gc_no 값="+gc_no);
			
			GcardDTO gcardDTO = gcardDAO.getGcardInfo(gc_no);
			System.out.println("ProductController의 gcardForm()의 gcardDTO 값="+gcardDTO);
			
			mv.addObject("job", "수정 페이지");
			mv.addObject("gcardDTO", gcardDTO);
		}
		mv.setViewName("product/gcardForm");
		return mv;
	}
	
	@RequestMapping("/insertGcard")
	public ModelAndView insertGcard(GcardDTO gcardDTO) {
		System.out.println("ProductController의 insertGcard() 메소드 호출 ----");
		System.out.println("ProductController의 insertGcard() 메소드의 gcardDTO 값="+gcardDTO);
		
		String path = "D:\\danawaImages\\GCARD";
		
		String oriName = gcardDTO.getFile().getOriginalFilename();
		//원본파일명
		
		int endIndex = oriName.lastIndexOf(".");
		//원본파일명 aa.png 인덱스 
		
		String fileN = "GCARD";
		//파일명을 CPU로 변환하기 위한 변수명
		String extN = oriName.substring(endIndex+1);
		//파일확장자 변수명
		
		String changeName = fileN+"."+extN;
		//새로운 파일명으로 바뀐 변수
		
		String saveName = FileUtil.rename(path, changeName);
		System.out.println(saveName);
		
		File file = new File(path+saveName);
		
		try {
			gcardDTO.getFile().transferTo(file);
		} catch (Exception e) {
			System.out.println("파일 복사 에러=" + e);
		}
		
		gcardDTO.setGc_image(saveName);
		
		gcardDAO.insertGcard(gcardDTO);
		
		ModelAndView mv = new ModelAndView();
		RedirectView rv = new RedirectView("../product/bbb");
		
		mv.setView(rv);
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
			mv.addObject("job", "등록 페이지");
		}else {
			int ram_no = Integer.parseInt(str_ram_no);
			System.out.println("ProductController의 ramForm()의 ram_no 값="+ram_no);
			
			RamDTO ramDTO = ramDAO.getRamInfo(ram_no);
			System.out.println("ProductController의 RamForm()의 ramDTO 값="+ramDTO);
			
			mv.addObject("job", "수정 페이지");
			mv.addObject("ramDTO", ramDTO);
		}
		mv.setViewName("product/ramForm");
		return mv;
	}
	
	@RequestMapping("/insertRam")
	public ModelAndView insertRam(RamDTO ramDTO) {
		System.out.println("ProductController의 insertRam() 메소드 호출 ----");
		System.out.println("ProductController의 insertRam() 메소드의 ramDTO 값="+ramDTO);
		
		String path = "D:\\danawaImages\\RAM";
		
		String oriName = ramDTO.getFile().getOriginalFilename();
		//원본파일명
		
		int endIndex = oriName.lastIndexOf(".");
		//원본파일명 aa.png 인덱스 
		
		String fileN = "RAM";
		//파일명을 CPU로 변환하기 위한 변수명
		String extN = oriName.substring(endIndex+1);
		//파일확장자 변수명
		
		String changeName = fileN+"."+extN;
		//새로운 파일명으로 바뀐 변수
		
		String saveName = FileUtil.rename(path, changeName);
		System.out.println(saveName);
		
		File file = new File(path+saveName);
		
		try {
			ramDTO.getFile().transferTo(file);
		} catch (Exception e) {
			System.out.println("파일 복사 에러=" + e);
		}
		
		ramDTO.setRam_image(saveName);
		
		ramDAO.insertRam(ramDTO);
		
		ModelAndView mv = new ModelAndView();
		RedirectView rv = new RedirectView("../product/bbb");
		
		mv.setView(rv);
		return mv;
	}
	
	// Ram----------------------------------------------------------------------------------------------------------

	// Power--------------------------------------------------------------------------------------------------------
	@RequestMapping("/powerForm")
	public ModelAndView powerForm(HttpServletRequest request) {
		System.out.println("ProductController의 powerForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();
		
		String str_power_no = request.getParameter("power_no");
		System.out.println("ProductController의 powerForm()의 power_no String 값="+str_power_no);
		
		if(str_power_no == null) {
			mv.addObject("job", "등록 페이지");
		}else {
			int power_no = Integer.parseInt(str_power_no);
			System.out.println("ProductController의 powerForm()의 power_no 값="+power_no);
			
			PowerDTO powerDTO = powerDAO.getPowerInfo(power_no);
			System.out.println("ProductController의 cpuForm()의 powerDTO 값="+powerDTO);
			
			mv.addObject("job", "수정 페이지");
			mv.addObject("powerDTO", powerDTO);
		}
		mv.setViewName("product/powerForm");
		return mv;
	}
	
	@RequestMapping("/insertPower")
	public ModelAndView insertPower(PowerDTO powerDTO) {
		System.out.println("ProductController의 insertPower() 메소드 호출 ----");
		System.out.println("ProductController의 insertPower() 메소드의 powerDTO 값="+powerDTO);
		
		String path = "D:\\danawaImages\\POWER";
		
		String oriName = powerDTO.getFile().getOriginalFilename();
		//원본파일명
		
		int endIndex = oriName.lastIndexOf(".");
		//원본파일명 aa.png 인덱스 
		
		String fileN = "POWER";
		//파일명을 CPU로 변환하기 위한 변수명
		String extN = oriName.substring(endIndex+1);
		//파일확장자 변수명
		
		String changeName = fileN+"."+extN;
		//새로운 파일명으로 바뀐 변수
		
		String saveName = FileUtil.rename(path, changeName);
		System.out.println(saveName);
		
		File file = new File(path+saveName);
		
		try {
			powerDTO.getFile().transferTo(file);
		} catch (Exception e) {
			System.out.println("파일 복사 에러=" + e);
		}
		
		powerDTO.setPower_image(saveName);
		
		powerDAO.insertPower(powerDTO);
		
		ModelAndView mv = new ModelAndView();
		RedirectView rv = new RedirectView("../product/bbb");
		
		mv.setView(rv);
		return mv;
	}
	
	// Power--------------------------------------------------------------------------------------------------------

	// Case---------------------------------------------------------------------------------------------------------
	@RequestMapping("/caseForm")
	public ModelAndView caseForm(HttpServletRequest request) {
		System.out.println("ProductController의 caseForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();
		
		String str_case_no = request.getParameter("case_no");
		System.out.println("ProductController의 caseForm()의 case_no String 값="+str_case_no);
		
		if(str_case_no == null) {
			mv.addObject("job", "등록 페이지");
		}else {
			int case_no = Integer.parseInt(str_case_no);
			System.out.println("ProductController의 caseForm()의 case_no 값="+case_no);
			
			CaseDTO caseDTO = caseDAO.getCaseInfo(case_no);
			System.out.println("ProductController의 caseForm()의 caseDTO 값="+caseDTO);
			
			mv.addObject("job", "수정 페이지");
			mv.addObject("caseDTO", caseDTO);
		}
		mv.setViewName("product/caseForm");
		return mv;
	}
	
	@RequestMapping("/insertCase")
	public ModelAndView insertCase(CaseDTO caseDTO) {
		System.out.println("ProductController의 insertCase() 메소드 호출 ----");
		System.out.println("ProductController의 insertCase() 메소드의 caseDTO 값="+caseDTO);
		
		String path = "D:\\danawaImages\\CASE";
		
		String oriName = caseDTO.getFile().getOriginalFilename();
		//원본파일명
		
		int endIndex = oriName.lastIndexOf(".");
		//원본파일명 aa.png 인덱스 
		
		String fileN = "CASE";
		//파일명을 CPU로 변환하기 위한 변수명
		String extN = oriName.substring(endIndex+1);
		//파일확장자 변수명
		
		String changeName = fileN+"."+extN;
		//새로운 파일명으로 바뀐 변수
		
		String saveName = FileUtil.rename(path, changeName);
		System.out.println(saveName);
		
		File file = new File(path+saveName);
		
		try {
			caseDTO.getFile().transferTo(file);
		} catch (Exception e) {
			System.out.println("파일 복사 에러=" + e);
		}
		
		caseDTO.setCase_image(saveName);
		
		caseDAO.insertCase(caseDTO);
		
		ModelAndView mv = new ModelAndView();
		RedirectView rv = new RedirectView("../product/bbb");
		
		mv.setView(rv);
		return mv;
	}
	
	// Case---------------------------------------------------------------------------------------------------------

	// Cooler-------------------------------------------------------------------------------------------------------
	@RequestMapping("/coolerForm")
	public ModelAndView coolerForm(HttpServletRequest request) {
		System.out.println("ProductController의 coolerForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();
		
		String str_cooler_no = request.getParameter("cooler_no");
		System.out.println("ProductController의 coolerForm()의 cooler_no String 값="+str_cooler_no);
		
		if(str_cooler_no == null) {
			mv.addObject("job", "등록 페이지");
		}else {
			int cooler_no = Integer.parseInt(str_cooler_no);
			System.out.println("ProductController의 coolerForm()의 cpu_no 값="+cooler_no);
			
			CoolerDTO coolerDTO = coolerDAO.getCoolerInfo(cooler_no);
			System.out.println("ProductController의 coolerForm()의 coolerDTO 값="+coolerDTO);
			
			mv.addObject("job", "수정 페이지");
			mv.addObject("coolerDTO", coolerDTO);
		}
		mv.setViewName("product/coolerForm");
		return mv;
	}
	
	@RequestMapping("/insertCooler")
	public ModelAndView insertCooler(CoolerDTO coolerDTO) {
		System.out.println("ProductController의 insertCooler() 메소드 호출 ----");
		System.out.println("ProductController의 insertCooler() 메소드의 coolerDTO 값="+coolerDTO);
		
		String path = "D:\\danawaImages\\COOLER";
		
		String oriName = coolerDTO.getFile().getOriginalFilename();
		//원본파일명
		
		int endIndex = oriName.lastIndexOf(".");
		//원본파일명 aa.png 인덱스 
		
		String fileN = "COOLER";
		//파일명을 CPU로 변환하기 위한 변수명
		String extN = oriName.substring(endIndex+1);
		//파일확장자 변수명
		
		String changeName = fileN+"."+extN;
		//새로운 파일명으로 바뀐 변수
		
		String saveName = FileUtil.rename(path, changeName);
		System.out.println(saveName);
		
		File file = new File(path+saveName);
		
		try {
			coolerDTO.getFile().transferTo(file);
		} catch (Exception e) {
			System.out.println("파일 복사 에러=" + e);
		}
		
		coolerDTO.setCooler_image(saveName);
		
		coolerDAO.insertCooler(coolerDTO);
		
		ModelAndView mv = new ModelAndView();
		RedirectView rv = new RedirectView("../product/bbb");
		
		mv.setView(rv);
		return mv;
	}
	
	// Cooler-------------------------------------------------------------------------------------------------------

	// Disk---------------------------------------------------------------------------------------------------------
	@RequestMapping("/diskForm")
	public ModelAndView diskForm(HttpServletRequest request) {
		System.out.println("ProductController의 diskForm() 메소드 호출 ----");
		ModelAndView mv = new ModelAndView();
		
		String str_disk_no = request.getParameter("disk_no");
		System.out.println("ProductController의 diskForm()의 disk_no String 값="+str_disk_no);
		
		if(str_disk_no == null) {
			mv.addObject("job", "등록 페이지");
		}else {
			int disk_no = Integer.parseInt(str_disk_no);
			System.out.println("ProductController의 diskForm()의 disk_no 값="+disk_no);
			
			DiskDTO diskDTO = diskDAO.getDiskInfo(disk_no);
			System.out.println("ProductController의 diskForm()의 diskDTO 값="+diskDTO);
			
			mv.addObject("job", "수정 페이지");
			mv.addObject("diskDTO", diskDTO);
		}
		mv.setViewName("product/diskForm");
		return mv;
	}
	
	@RequestMapping("/insertDisk")
	public ModelAndView insertDisk(DiskDTO diskDTO) {
		System.out.println("ProductController의 insertDisk() 메소드 호출 ----");
		System.out.println("ProductController의 insertDisk() 메소드의 diskDTO 값="+diskDTO);
		
		String path = "D:\\danawaImages\\DISK";
		
		String oriName = diskDTO.getFile().getOriginalFilename();
		//원본파일명
		
		int endIndex = oriName.lastIndexOf(".");
		//원본파일명 aa.png 인덱스 
		
		String fileN = "DISK";
		//파일명을 CPU로 변환하기 위한 변수명
		String extN = oriName.substring(endIndex+1);
		//파일확장자 변수명
		
		String changeName = fileN+"."+extN;
		//새로운 파일명으로 바뀐 변수
		
		String saveName = FileUtil.rename(path, changeName);
		System.out.println(saveName);
		
		File file = new File(path+saveName);
		
		try {
			diskDTO.getFile().transferTo(file);
		} catch (Exception e) {
			System.out.println("파일 복사 에러=" + e);
		}
		
		diskDTO.setDisk_image(saveName);
		
//		diskDAO.insertDisk(diskDTO);
		
		ModelAndView mv = new ModelAndView();
		RedirectView rv = new RedirectView("../product/bbb");
		
		mv.setView(rv);
		return mv;
	}
	
	// Disk---------------------------------------------------------------------------------------------------------

}