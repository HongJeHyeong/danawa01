package com.danawa.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
  // 이세진

  @RequestMapping("/test")
  public void test() {
    System.out.println("board/test!!!");
  }

}