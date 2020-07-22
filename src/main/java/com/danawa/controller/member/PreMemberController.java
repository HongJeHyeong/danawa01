package com.danawa.controller.member;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.database.member.dao.MemberDAO;
import com.database.member.dto.MemberDTO;


@Controller
@RequestMapping("/PreMember")
public class PreMemberController {
	
	@Autowired
	private MemberDAO memberDAO ;
	
	
	
	@RequestMapping("/inputMem")
	public String inputMem(MemberDTO dto) {
		memberDAO.inputMem(dto);
		
		return "/member/login";
	}
	
	@RequestMapping("/IdCheck")
	public ModelAndView IdCheck(@RequestParam("id") String id) {
		String result=String.valueOf(memberDAO.IdCheck(id));
		System.out.println("result=" + result);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("/member/IdCheck");
		return mv;
	}
	

	@RequestMapping("/join")
	public String memberjoin(HttpSession session) {
		  System.out.println("join진입성공");
		  //1.파라미터받기
		  //2.비지니스로직(<->Service<->DAO<->myBatis<->DB)
		  //3.Model
		  //4.View
	return "member/joinform";
	}
	
	@RequestMapping("/login")
	public String Login(HttpSession session,HttpServletRequest request) {
	  System.out.println("login진입성공");
		//1.파라미터받기
		//2.비지니스로직(<->Service<->DAO<->myBatis<->DB)
		//3.Model
		//4.View
	  String result;
	  Cookie[] ck=request.getCookies();
	  if(ck!=null) {
		  for (Cookie cookie : ck) {
			  if("member_id".equals(cookie.getName())) {
			   session.setAttribute("member_id", cookie.getValue());
			   System.out.println("id ="+cookie.getValue());
			  }
			  if("member_no".equals(cookie.getName())) {
				  session.setAttribute("member_no", cookie.getValue());
				  System.out.println("no = "+cookie.getValue());
			  }
			  if("grade".equals(cookie.getName())) {
				  session.setAttribute("grade", cookie.getValue());
				  System.out.println( "grade = "+cookie.getValue());
			  }
		  }
	  }
	  
	  
	  if(session.getAttribute("member_id")!=null) {
		  result="redirect:../";
		  System.out.println("로그인중 = "+session.getAttribute("member_id"));
	  }else {
		  result="/member/login";
	  }
	  
	  return result;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletResponse response,HttpServletRequest request,HttpSession session) {
		System.out.println("Logout 진입성공");
		
		//1.파라미터받기
		//2.비지니스로직(<->Service<->DAO<->myBatis<->DB)
		//3.Model
		//4.View
		 Cookie[] ck=request.getCookies();
		  if(ck!=null) {
			  for (Cookie cookie : ck) {
				  System.out.println("쿠키삭제전 = "+cookie.getValue()); 
				  cookie.setMaxAge(0);
				  cookie.setPath("/danawa");
				  response.addCookie(cookie);
				  System.out.println("쿠키삭제후 = "+cookie.getValue());
				  
			  }
		  }
		  Cookie[] ck2=request.getCookies();
		  if(ck2!=null) {
			  for (Cookie cookie : ck2) {
				  System.out.println("쿠키2삭제전 = "+cookie.getValue()); 
				  
				  cookie.setMaxAge(0);
				  response.addCookie(cookie);
				  System.out.println("쿠키2삭제후 = "+cookie.getValue());
				  
			  }
		  }
		  session.invalidate();
		//return "redirect:../";
		return "redirect:../PreMember/login";
	}
	
	
	//http://localhost/app/member/loginProc
	@RequestMapping("/loginProc")
	public ModelAndView loginProc(MemberDTO memberDTO,HttpSession session,HttpServletResponse response,@RequestParam(value="AutoLogin",required=false,defaultValue="2") int auto) {
		System.out.println("loginProc dto=  "+memberDTO);
		//1.파라미터받기
		//2.비지니스로직(<->Service<->DAO<->myBatis<->DB)
		HashMap map = new HashMap();
		//map에 필요한 정보를 기억시킨다.
		//이때, 컬럼의 명은 항상 대문자.
		map.put("member_id",memberDTO.getMember_id() );//user가 입력id
		map.put("member_pw",memberDTO.getMember_pw() );//user가 입력pw
		
		HashMap result = memberDAO.loginProc(map);
		//result에는 쿼리문의 실행결과가 담겨있다.
		String temp=null;
		//쿼리문 실행실패 => 로그인 실패 =>회원정보가 없다.
		System.out.println(auto);
		if(result==null||result.size()==0) {
			
		}
		else {
			session.setAttribute("member_id", result.get("member_id"));
			session.setAttribute("grade", result.get("member_grade"));
			session.setAttribute("member_no", result.get("member_no"));
			if(auto==1) {
			temp=(String)session.getAttribute("member_id");

			Cookie cookie=new Cookie("member_id",temp);
			cookie.setPath("/danawa");
			cookie.setMaxAge(60*60*24*7);
			response.addCookie(cookie);
			
			temp=String.valueOf(session.getAttribute("member_no"));
			cookie=new Cookie("member_no",temp);
			cookie.setPath("/danawa");
			cookie.setMaxAge(60*60*24*7);
			response.addCookie(cookie);
			
			temp=String.valueOf(session.getAttribute("grade"));
			cookie=new Cookie("grade",temp);
			cookie.setPath("/danawa");
			cookie.setMaxAge(60*60*24*7);
			response.addCookie(cookie);
			
			response.addCookie(cookie);
			}else {
				Cookie cookie=new Cookie("member_id","");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
		//3.Model
		//4.View
		//로그인성공시&로그인실패시 로그인 폼뷰페이지
		ModelAndView mv= new ModelAndView();
		//Spring에서의 ModelAndView객체 sendRedirect용 뷰
		RedirectView rv = new RedirectView("../");
		mv.setView(rv);
		return mv;
	}
	
}
