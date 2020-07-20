package com.database.qna.service;

import com.danawa.util.PageUtil;
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

	public void writeProc(QnaDTO qnaDto) {

		qnaDAO.writeProc(qnaDto);

	}

	public PageUtil getPageInfo(int nowPage) {
		
		int totalCount = qnaDAO.getTotalCnt();
		
		PageUtil pageInfo = new PageUtil(nowPage, totalCount, 3,5);
		
		return pageInfo;
	}

	public ArrayList<QnaDTO> getList(PageUtil pageInfo) {
		
		int start = (pageInfo.getNowPage()-1)*pageInfo.getLineCount();
		int end = start + pageInfo.getLineCount()-1;
		
		System.out.println(start+"~"+end);
		
		QnaDTO qnaDto = new QnaDTO();
		qnaDto.setStart(start);
		qnaDto.setEnd(end);

		ArrayList<QnaDTO> list = qnaDAO.getList(qnaDto);
		
		return list;
	}

	public QnaDTO getContent(int qna_no) {
		return qnaDAO.getContent(qna_no);	
	}

}
