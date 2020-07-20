package com.danawa.controller.qna_reply;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.database.qna_reply.service.Qna_repService;

@Controller
@RequestMapping("/QNA_reply")
public class QNA_replyController {
	
	@Autowired
	private Qna_repService qna_repService;
	
	
	
	

}
