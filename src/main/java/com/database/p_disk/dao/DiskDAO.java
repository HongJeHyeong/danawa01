package com.database.p_disk.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_disk.dto.DiskDTO;


public class DiskDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;
  
  public ArrayList<DiskDTO> getDiskAllList(DiskDTO DiskDTO){
	  return (ArrayList)sqlSession.selectList("p_disk.diskAllList",DiskDTO);
  }
  
  public ArrayList<DiskDTO> getDiskSHList(DiskDTO DiskDTO,String disk_category){
	  return (ArrayList)sqlSession.selectList("p_disk.diskSHList",DiskDTO);
  }
  
}