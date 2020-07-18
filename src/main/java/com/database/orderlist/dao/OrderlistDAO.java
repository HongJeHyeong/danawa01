package com.database.orderlist.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class OrderlistDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;

}