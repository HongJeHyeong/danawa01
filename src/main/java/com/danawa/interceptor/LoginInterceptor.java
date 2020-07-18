package com.danawa.interceptor;

import org.slf4j.*;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import javax.servlet.http.*;

public class LoginInterceptor extends HandlerInterceptorAdapter {

  private static final Logger logger = LoggerFactory.getLogger(AdminInterceptor.class);

  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    // 이 함수가 true를 반환하면 컨트롤러가 실행
    // 이 함수가 false를 반환하면 컨트롤러가 실행x
    System.out.println("------------------------------------------------------ admin");
    HttpSession session = request.getSession();
    String grade_ = session.getAttribute("grade") + "";
    int grade = 0;

    try {
      grade = Integer.parseInt(grade_.trim());
    } catch (Exception e) {
    }

    if (grade == 0) {
      return true;
    } else {
      System.out.println("인터셉트!!! need " + "NOT LOGIN");
      response.sendRedirect("../");
      return false;
    }

  }
}