package com.danawa.controller.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.danawa.util.PageUtil;
import com.database.board.cart.Cart;
import com.database.board.dto.BoardDTO;
import com.database.board.service.BoardService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class BoardController {
  // 이세진

  private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

  // 변수
  @Autowired
  private BoardService boardS;

  @RequestMapping("/test")
  public void test() {
    System.out.println("board/test!!!");
  }

  // 글목록조회 요청함수
  @RequestMapping("/list")
  public ModelAndView list(@RequestParam(value = "nowPage", required = false, defaultValue = "1") int nowPage,
      ModelAndView mv) {
    System.out.println("글목록조회 list()nowPage=" + nowPage);

    // 1.파라미터받기 nowPage=보고싶은페이지(선택)
    PageUtil pageInfo = boardS.getPageInfo(nowPage);
    System.out.println("글목록조회 list()pageInfo=" + pageInfo);

    // 2.비즈니스로직 수행(<->Service<->DAO<->DB)
    ArrayList<BoardDTO> list = boardS.getList(pageInfo);// 게시물정보

    // 3.Model
    mv.addObject("LIST", list);// 게시물정보
    mv.addObject("PAGEINFO", pageInfo);// 페이징정보

    // 4.View /WEB-INF/views/board/boardlist.jsp
    mv.setViewName("board/boardlist");
    return mv;
  }

  @RequestMapping("/assemble")
  public ModelAndView assemble() {

    ModelAndView mv = new ModelAndView();
    mv.setViewName("board/assemblePage");
    return mv;
  }

  @RequestMapping("/cartPage")
  public ModelAndView cartPage(HttpServletRequest request) {

    logger.info("--- 장바구니 페이지 다시 불러옵니다.");

    HttpSession session = request.getSession();
    Cart cart;
    ModelAndView mv = new ModelAndView();

    if (session.getAttribute("cart") == null) {
      cart = new Cart();
      session.setAttribute("cart", cart);
      mv.addObject("cart", cart);
    } else {
      mv.addObject("cart", (Cart) session.getAttribute("cart"));
    }
    mv.setViewName("board/cartPage");
    return mv;
  }

  @RequestMapping("/content")
  public ModelAndView content() {

    ModelAndView mv = new ModelAndView();
    mv.setViewName("board/boardContent");
    return mv;
  }

  @RequestMapping("/updateForm")
  public ModelAndView updateForm() {

    ModelAndView mv = new ModelAndView();
    mv.setViewName("board/updateForm");
    return mv;
  }

}