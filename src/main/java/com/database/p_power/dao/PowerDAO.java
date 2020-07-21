package com.database.p_power.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_power.dto.PowerDTO;

public class PowerDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;
  
  //Power 상세정보 가져오기 ------------------------------------------------------------------------
  public PowerDTO getPowerInfo(int power_no) {
	  System.out.println("PowerDAO의 getPowerInfo() 메소드 호출 ----");
	  System.out.println("PowerDAO의 power_no 값="+power_no);
	  PowerDTO powerDTO = new PowerDTO();
	  
	  powerDTO = sqlSession.selectOne("getPowerInfo", power_no);
	  System.out.println("PowerDAO의 powerDTO 값="+powerDTO);
	  
	  return powerDTO;
  }
  //Power 상세정보 가져오기 ------------------------------------------------------------------------
  
  public void updatePower(PowerDTO powerDTO) {
	  sqlSession.update("p_power.updatePower", powerDTO);
  }
  
  // Power 정보 입력하기
  // ------------------------------------------------------------------------
  public void insertPower(PowerDTO powerDTO) {
    sqlSession.insert("p_power.insertPower", powerDTO);
  }
  // Power 정보 입력하기
  // ------------------------------------------------------------------------

  
  public List<PowerDTO> getPowerList(int capacity){
	  return sqlSession.selectList("p_power.powerList",capacity);
  }
}