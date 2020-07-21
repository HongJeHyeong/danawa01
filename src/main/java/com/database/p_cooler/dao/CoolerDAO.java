package com.database.p_cooler.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_case.dto.CaseDTO;
import com.database.p_cooler.dto.CoolerDTO;

public class CoolerDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;
  
  //Cooler 상세정보 가져오기 ------------------------------------------------------------------------
  public CoolerDTO getCoolerInfo(int cooler_no) {
	  System.out.println("CoolerDAO의 getCoolerInfo() 메소드 호출 ----");
	  System.out.println("CoolerDAO의 cooler_no 값="+cooler_no);
	  CoolerDTO coolerDTO = new CoolerDTO();
	  
	  coolerDTO = sqlSession.selectOne("getCoolerInfo", cooler_no);
	  System.out.println("CoolerDAO의 coolerDTO 값="+coolerDTO);
	  
	  return coolerDTO;
  }
  //Cooler 상세정보 가져오기 ------------------------------------------------------------------------
  
	// Cooler 정보 수정하기 ---------------------------------------------------------
	public void updateCooler(CoolerDTO coolerDTO) {
		sqlSession.update("p_cooler.updateCooler", coolerDTO);
	}
	// Cooler 정보 수정하기 ---------------------------------------------------------
  
  // Cooler 정보 입력하기
  // ------------------------------------------------------------------------
  public void insertCooler(CoolerDTO coolerDTO) {
    sqlSession.insert("p_cooler.insertCooler", coolerDTO);
  }
  // Cooler 정보 입력하기
  // ------------------------------------------------------------------------

  public List<CoolerDTO> getCoolerList(String type){
	  return sqlSession.selectList("p_cooler.coolerList",type);
  }
}