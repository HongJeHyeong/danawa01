package com.database.p_gcard.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_gcard.dto.GcardDTO;

public class GcardDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;
  
  //Gcard 상세정보 가져오기 ------------------------------------------------------------------------
  public GcardDTO getGcardInfo(int gc_no) {
	  System.out.println("GcardDAO의 getGcardInfo() 메소드 호출 ----");
	  System.out.println("GcardDAO의 gc_no 값="+gc_no);
	  GcardDTO gcardDTO = new GcardDTO();
	  
	  gcardDTO = sqlSession.selectOne("getGcardInfo", gc_no);
	  System.out.println("gcardDAO의 gcardDTO 값="+gcardDTO);
	  
	  return gcardDTO;
  }
  //Gcard 상세정보 가져오기 ------------------------------------------------------------------------
  
  public List<GcardDTO> getGcardList(String gc_chipset){
	  return sqlSession.selectList("p_gcard.gcardList",gc_chipset);
  }
  
  public List<String> getGcardChipsetList() {
	  return sqlSession.selectList("p_gcard.gcardChipsetList");
  }
  
  
}