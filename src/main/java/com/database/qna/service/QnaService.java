package com.database.qna.service;

import com.database.qna.dao.QnaDAO;
import com.database.qna.dto.QnaDTO;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaService {
//	member_no, member_id, grade 세션값

	@Autowired
	private QnaDAO qnaDAO;
	/////////// ------- 이 아래로 작성하세요 -------////////////////////////////

	public void writeProc(QnaDTO qnaDto, HttpSession session) {

		String writer = (String)session.getAttribute("member_id");
		qnaDto.setWriter(writer);
		qnaDAO.writeProc(qnaDto);

	}

}
