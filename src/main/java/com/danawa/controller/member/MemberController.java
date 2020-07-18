package com.danawa.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {
  // 최원용

  @RequestMapping("/test")
  public void test() {
    System.out.println("member/test!!!");
  }

}