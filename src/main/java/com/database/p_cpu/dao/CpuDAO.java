package com.database.p_cpu.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_cpu.dto.CpuDTO;

public class CpuDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;
  
  //CPU 상세정보 가져오기 ------------------------------------------------------------------------
  public CpuDTO getCpuInfo(int cpu_no) {
	  System.out.println("CpuDAO의 getCpuInfo() 메소드 호출 ----");
	  System.out.println("CpuDAO의 cpu_no 값="+cpu_no);
	  CpuDTO cpuDTO = new CpuDTO();
	  
	  cpuDTO = sqlSession.selectOne("getCpuInfo", cpu_no);
	  System.out.println("CpuDAO의 cpuDTO 값="+cpuDTO);
	  
	  return cpuDTO;
  }
  //CPU 상세정보 가져오기 ------------------------------------------------------------------------
  
  //CPU 상품 등록하기 ---------------------------------------------------------------------------
  public void insertCpu(CpuDTO cpuDTO) {
	  sqlSession.insert("p_cpu.insertCpu", cpuDTO);
  }
  //CPU 상품 등록하기 ---------------------------------------------------------------------------
  
  //CPU 상품 수정하기 ---------------------------------------------------------------------------
  public void updateCpu(CpuDTO cpuDTO) {
	  System.out.println("CpuDAO.updateCpu의 cpuDTO="+cpuDTO);
	  sqlSession.update("p_cpu.updateCpu", cpuDTO);
  }
  //CPU 상품 수정하기 ---------------------------------------------------------------------------
  
  // CPU 정보 삭제하기 -------------------------------------------------------------------------
  public void deleteCpu(int cpu_no) {
	  sqlSession.delete("p_cpu.deleteCpu", cpu_no);
  }
  // CPU 정보 삭제하기 -------------------------------------------------------------------------
  

  //case List
  public List<CpuDTO> getCpuList(String company){
	  return sqlSession.selectList("p_cpu.cpuList", company);
  }
}