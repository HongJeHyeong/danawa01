package com.danawa.controller.notice;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.codec.multipart.SynchronossPartHttpMessageReader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.danawa.util.PageUtil;
import com.database.notice.dao.NoticeDAO;
import com.database.notice.dto.NoticeDTO;


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
		PageUtil pageInfo = new PageUtil(nowPage,totalCount,3,5);
		
		ArrayList list = noticeDAO.noticeList(pageInfo);
		ModelAndView mv= new ModelAndView();
		mv.addObject("list",list);
		mv.addObject("PAGEINFO",pageInfo);
		mv.addObject("cnt",totalCount);
		mv.addObject("nowPage",nowPage);
		mv.setViewName("./notice/list");
		return mv;
	}
	@RequestMapping("/content")
	public ModelAndView content(@RequestParam(value="nowPage",required=false,defaultValue="1") int nowPage,@RequestParam("notice_no") int notice_no) {
		System.out.println("공지 번호 = "+notice_no);
		NoticeDTO dto=noticeDAO.Content(notice_no);
		ModelAndView mv= new ModelAndView();
		mv.addObject("nowPage",nowPage);
		mv.addObject("list",dto);
		mv.setViewName("./notice/content");
		return mv;
	}
	@RequestMapping("/del")
	public String del(@RequestParam("notice_no") int notice_no) {
		noticeDAO.del(notice_no);
		return "redirect:../notice/list";
	}
	@RequestMapping("/update")
	public ModelAndView update(@RequestParam("notice_no") int notice_no,@RequestParam(value="nowPage",required=false,defaultValue="1") int nowPage) {
		
		NoticeDTO dto=noticeDAO.Content(notice_no);
		
		ModelAndView mv= new ModelAndView();
		mv.addObject("nowPage",nowPage);
		mv.addObject("list",dto);
		mv.setViewName("./notice/update");
		return mv;
		
	}
	@RequestMapping("/updateProc")
	public ModelAndView updateProc(NoticeDTO dto,@RequestParam("notice_no") int notice_no,@RequestParam(value="nowPage",required=false,defaultValue="1") int nowPage) {
		
		noticeDAO.update(dto);
		
		ModelAndView mv= new ModelAndView();
		mv.addObject("nowPage",nowPage);
		mv.addObject("notice_no",notice_no);
		RedirectView rv=new RedirectView("../notice/content");
		mv.setView(rv);
		return mv;
		
	}
}