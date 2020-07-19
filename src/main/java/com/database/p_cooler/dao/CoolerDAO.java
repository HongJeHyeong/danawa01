package com.database.p_cooler.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_cooler.dto.CoolerDTO;

public class CoolerDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;

  public List<CoolerDTO> getCoolerList(String type){
	  return sqlSession.selectList("p_cooler.coolerList",type);
  }
}