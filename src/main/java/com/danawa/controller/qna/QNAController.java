package com.danawa.controller.qna;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.database.qna.dao.QnaDAO;
import com.database.qna.dto.QnaDTO;
import com.database.qna.service.QnaService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("/QNA")
public class QNAController {
  // 김석근
  private QnaService qnaS;

  // 글쓰기폼
  // 요청내용
  @RequestMapping("/writeForm")
  public void writeForm() {
    System.out.println("QnaController()-writeForm()호출---");

  }

  // 글쓰기처리
  @RequestMapping("/writeProc")
  public ModelAndView writeProc(QnaDTO qnaDto, HttpSession request) {
    System.out.println("Qna-writeProc:" + qnaDto);    

    // 2. 비지니스로직수행
    qnaS.writeProc(qnaDto, request);

    // 3. Model

    // 4. View
    ModelAndView mv = new ModelAndView();
    RedirectView view = new RedirectView("/list");
    mv.setView(view);
    return mv;

  }

}