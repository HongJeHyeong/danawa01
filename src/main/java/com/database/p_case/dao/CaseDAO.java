package com.database.p_case.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_case.dto.CaseDTO;

public class CaseDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;

  public ArrayList<CaseDTO> getCaseList(int caseLeng){
	  return (ArrayList)sqlSession.selectList("p_case.caseList", caseLeng);
  }
}