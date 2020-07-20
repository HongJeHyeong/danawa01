package com.database.qna.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.qna.dto.QnaDTO;

public class QnaDAO extends SqlSessionDaoSupport {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 글쓰기 처리
	public void writeProc(QnaDTO qnaDto) {
		sqlSession.insert("qna.insQna", qnaDto);
	}

	public int getTotalCnt() {
		int cnt = sqlSession.selectOne("qna.totalCnt");	
		return cnt;
	}

	public ArrayList<QnaDTO> getList(QnaDTO qnaDto) {
		
		ArrayList list = (ArrayList)sqlSession.selectList("qna.qnaList", qnaDto);
		return list;

	}

	public QnaDTO getContent(int qna_no) {
		return (QnaDTO)sqlSession.selectOne("qna.getContent", qna_no);

	}
	
	
	
	
	
	

}//class end