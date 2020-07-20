package com.database.p_ram.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_ram.dto.RamDTO;

public class RamDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;
  
  //Ram 상세정보 가져오기 ------------------------------------------------------------------------
  public RamDTO getRamInfo(int ram_no) {
	  System.out.println("RamDAO의 getRamInfo() 메소드 호출 ----");
	  System.out.println("RamDAO의 ram_no 값="+ram_no);
	  RamDTO ramDTO = new RamDTO();
	  
	  ramDTO = sqlSession.selectOne("getRamInfo", ram_no);
	  System.out.println("ramDAO의 ramDTO 값="+ramDTO);
	  
	  return ramDTO;
  }
  //Gcard 상세정보 가져오기 ------------------------------------------------------------------------
  
  public List<RamDTO> getRamList(int volume){
	  return sqlSession.selectList("p_ram.ramList", volume);
  }
}