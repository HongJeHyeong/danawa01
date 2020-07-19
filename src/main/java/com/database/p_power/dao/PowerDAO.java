package com.database.p_power.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_power.dto.PowerDTO;

public class PowerDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;
  
  public List<PowerDTO> getPowerList(int capacity){
	  return sqlSession.selectList("p_power.powerList",capacity);
  }
}