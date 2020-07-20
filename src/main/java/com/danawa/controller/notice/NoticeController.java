package com.danawa.controller.notice;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.danawa.util.PageUtil;
import com.database.notice.dao.NoticeDAO;


@Controller
@RequestMapping("/notice")
public class NoticeController {
  // 홍제형
	@Autowired
	private NoticeDAO noticeDAO;
	
	@RequestMapping("/list")
	public ModelAndView notice(@RequestParam(value="nowPage",required=false,defaultValue="1") int nowPage) {
		System.out.println("공지사항 조회 list()nowPage=" +nowPage);
		
		int totalCount = noticeDAO.getTotalCnt();
		PageUtil pageInfo = new PageUtil(nowPage,totalCount,10,5);
		
		ArrayList list = noticeDAO.noticeList(pageInfo);
		ModelAndView mv= new ModelAndView();
		mv.addObject("list",list);
		mv.addObject("pageInfo",pageInfo);
		mv.setViewName("./notice/list");
		return mv;
	}
}