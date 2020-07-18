package com.danawa.controller.member;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.database.member.dao.MemberDAO;
import com.database.member.dto.MemberDTO;




@Controller
@RequestMapping("/member")
public class MemberController {
  // 최원용
	
	
	
  @RequestMapping("/test")
  public void test() {
    System.out.println("member/test!!!");
  }
  

  
	
}