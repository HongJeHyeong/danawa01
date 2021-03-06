package com.danawa.controller.main;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping("/")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		return "redirect:main/home";
	}

	@RequestMapping("/main/home")
	public String home2() {
		logger.info("redirect to home");
		return "main/home";
	}

	@RequestMapping("/testSession1")
	public void testSession1(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("grade", 1);
		System.out.println("------- warning ------------");
		System.out.println(" Insert Session 2  ");
		System.out.println("");
	}

	@RequestMapping("/testSession2")
	public void testSession2(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("grade", 2);
		System.out.println("------- warning ------------");
		System.out.println(" Insert Session 2  ");
		System.out.println("");
	}

	@RequestMapping("/testSession3")
	public void testSession3(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("grade", 3);
		System.out.println("------- warning ------------");
		System.out.println(" Insert Session 3  ");
		System.out.println("");
	}

}
