package com.database.board_reply.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class Board_repDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;

}