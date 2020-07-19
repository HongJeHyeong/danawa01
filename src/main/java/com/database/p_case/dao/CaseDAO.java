package com.database.p_case.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_case.dto.CaseDTO;

public class CaseDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;

  public List<CaseDTO> getCaseList(int caseLeng){
	  return sqlSession.selectList("p_case.caseList", caseLeng);
  }
}