package com.database.p_ram.dto;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class RamDTO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;

}