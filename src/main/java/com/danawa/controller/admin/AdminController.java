package com.danawa.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	// 홍제형

	@RequestMapping("/test")
	public void test() {
		System.out.println("admin/test!!!");
	}

}