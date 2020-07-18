package com.database.p_mainboard.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_cpu.dto.CpuDTO;
import com.database.p_mainboard.dto.MainboardDTO;

public class MainboardDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;

  //Mainboard 상세정보 가져오기 ------------------------------------------------------------------------
  public MainboardDTO getMainboardInfo(int mb_no) {
	  System.out.println("MainboardDAO의 getMainboardInfo() 메소드 호출 ----");
	  System.out.println("MainboardDAO의 mb_no 값="+mb_no);
	  MainboardDTO mainboardDTO = new MainboardDTO();
	  
	  mainboardDTO = sqlSession.selectOne("getMainboardInfo", mb_no);
	  System.out.println("mainboardDAO의 mainboardDTO 값="+mainboardDTO);
	  
	  return mainboardDTO;
  }
  //Mainboard 상세정보 가져오기 ------------------------------------------------------------------------
}