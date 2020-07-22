package com.danawa.interceptor;

import org.slf4j.*;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import javax.servlet.http.*;

public class AllInterceptor extends HandlerInterceptorAdapter {

  private static final Logger logger = LoggerFactory.getLogger(AdminInterceptor.class);

  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    // 이 함수가 true를 반환하면 컨트롤러가 실행
    // 이 함수가 false를 반환하면 컨트롤러가 실행x
    System.out.println("------------------------------------------------------ user");
    HttpSession session = request.getSession();
    
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
      return true;
  }
}