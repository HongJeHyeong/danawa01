package com.database.p_case.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class CaseDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;

}