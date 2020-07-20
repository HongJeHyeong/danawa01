package com.database.p_disk.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_disk.dto.DiskDTO;


public class DiskDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;
  
  //Disk 상세정보 가져오기 ------------------------------------------------------------------------
  public DiskDTO getDiskInfo(int disk_no) {
	  System.out.println("DiskDAO의 getDiskInfo() 메소드 호출 ----");
	  System.out.println("DiskDAO의 cpu_no 값="+disk_no);
	  DiskDTO diskDTO = new DiskDTO();
	  
	  diskDTO = sqlSession.selectOne("getDiskInfo", disk_no);
	  System.out.println("DiskDAO의 diskDTO 값="+diskDTO);
	  
	  return diskDTO;
  }
  //Disk 상세정보 가져오기 ------------------------------------------------------------------------
  
  public List<DiskDTO> getDiskList(String category){
	  return sqlSession.selectList("p_disk.diskList",category);
  }
  
}