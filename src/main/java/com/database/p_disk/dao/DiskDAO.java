package com.database.p_disk.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_disk.dto.DiskDTO;


public class DiskDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;
  
  public List<DiskDTO> getDiskList(String category){
	  return sqlSession.selectList("p_disk.diskList",category);
  }
  
}