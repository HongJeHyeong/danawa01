package com.danawa.controller.member;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.database.member.dao.MemberDAO;
import com.database.member.dto.MemberDTO;




@Controller
@RequestMapping("/member")
public class MemberController {
  // 최원용
	
	@Autowired
	private MemberDAO memberDAO ;
	
	
  @RequestMapping("/test")
  public void test() {
    System.out.println("member/test!!!");
  }
  @RequestMapping("/mypage2")
  public ModelAndView mypage2(@RequestParam("id") String id,HttpServletRequest req) throws ParseException {
		System.out.println("member/mypage2 id= "+id);
		MemberDTO result = memberDAO.mypage(id);
		List list = memberDAO.memberList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", result);
		mv.addObject("list",list);
		mv.setViewName("/member/mypage");
		return mv;
	  
  }
  @RequestMapping("/mypage")
  public ModelAndView mypage(HttpSession session,HttpServletRequest req) throws ParseException {
		System.out.println("member/mypage");
		String id = (String) session.getAttribute("member_id");
		MemberDTO result = memberDAO.mypage(id);
		List list = memberDAO.memberList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", result);
		mv.addObject("list",list);
		mv.setViewName("/member/mypage");
		return mv;
  }
  
  @RequestMapping("/modify")
  public String modify(MemberDTO dto) {
	 System.out.println("모디파이 = "+dto); 
	 memberDAO.modify(dto);
	 return "main/home";
	  
  }

  
	
}