package com.database.board.dao;

import java.util.ArrayList;

import com.database.board.dto.BoardDTO;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class BoardDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;

  // 글 목록 조회
  public ArrayList<BoardDTO> getList(BoardDTO bDto) {

    ArrayList list = (ArrayList) sqlSession.selectList("board.boardList", bDto);

    return list;
  }

  // 총 게시물수 조회
  public int getTotalCnt() {
    int cnt = sqlSession.selectOne("board.totalCnt");
    return cnt;
  }

  // 조회수증가 ( oriNo 확인 필요 )
  public void hitUp(int oriNo) {
    sqlSession.update("board.hitUp", oriNo);
  }
}