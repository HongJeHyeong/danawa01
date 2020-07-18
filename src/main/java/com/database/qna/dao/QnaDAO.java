package com.database.qna.dao;

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

}