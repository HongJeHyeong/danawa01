package com.danawa.controller.qna;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.database.qna.dao.QnaDAO;
import com.database.qna.dto.QnaDTO;
import com.database.qna.service.QnaService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.danawa.util.PageUtil;

@Controller
@RequestMapping("/QNA")
public class QNAController {
  // 김석근
  @Autowired
  private QnaService qnaService;

  // 글쓰기폼
  // 요청내용
  @RequestMapping("/writeForm")
  public void writeForm() {
    System.out.println("QnaController()-writeForm()호출---");
  
  }

  // 글쓰기처리
  @RequestMapping("/writeProc")
  public ModelAndView writeProc(QnaDTO qnaDto) {
    System.out.println("Qna-writeProc:" + qnaDto);  
    System.out.println("----------------------------------");
    System.out.println(qnaDto.toString());
    // 2. 비지니스로직수행
    System.out.println(qnaDto.getFk_member_no());
    System.out.println(qnaDto.getWriter());
    
    qnaService.writeProc(qnaDto);

    // 3. Model

    // 4. View
    ModelAndView mv = new ModelAndView();
    RedirectView view = new RedirectView("../QNA/list");
    mv.setView(view);
    return mv;

  }
  
  
  //리스트
  @RequestMapping("/list")
  public ModelAndView getList(@RequestParam(value = "nowPage", required = false, defaultValue = "1") int nowPage, //값을 안주면 nowPage=1로 처리
			ModelAndView mv) {
	  System.out.println("Controller-getList() nowPage:"+nowPage);
	  //1. 파라미터받기
	  PageUtil pageInfo = qnaService.getPageInfo(nowPage);
	  System.out.println("controller-getList() pageInfo:"+pageInfo);
	  
	  //2. 비지니스로직수행
	  ArrayList<QnaDTO> list = qnaService.getList(pageInfo);
	  System.out.println("컨트롤러-겟리스트-리스트사이즈:"+list.size());
	  //3. Model	  
	  mv.addObject("LIST", list);
	  mv.addObject("PAGEINFO", pageInfo);
	  mv.setViewName("QNA/list");
	    
	  //4. View
	  return mv;
	  
  }
  
  @RequestMapping("content")
    public String qnaContent(@RequestParam(value = "nowPage") int nowPage, @RequestParam(value = "qna_no") int qna_no,
			HttpServletRequest request) {
	  //1. 파라미터받기
	  System.out.println("서비스->qnaContent()->nowPage:"+nowPage);
	  System.out.println("서비스->qnaContent()->qna_no:"+qna_no);
	  
	  //2. 비지니스로직 수행
	  //2-1. 게시판글보기
	  QnaDTO qnaDto = qnaService.getContent(qna_no);
	  
	  //2-2. 답글보기
	    
	  
	  //3. model
	  request.setAttribute("nowPage", nowPage);
	  request.setAttribute("qnaDTO", qnaDto); // 게시판정보
	  
	  //4. View
	  return "QNA/content";
	  
	  
	  
  }
  
  
  
  
  

}//class end