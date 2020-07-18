package com.database.board.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class BoardDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;


}