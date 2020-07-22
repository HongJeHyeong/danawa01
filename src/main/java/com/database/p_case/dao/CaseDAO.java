package com.database.p_case.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.p_case.dto.CaseDTO;

public class CaseDAO extends SqlSessionDaoSupport {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// Case 상세정보 가져오기 ------------------------------------------------------------------------
	public CaseDTO getCaseInfo(int case_no) {
		System.out.println("CaseDAO의 getCaseInfo() 메소드 호출 ----");
		System.out.println("CaseDAO의 case_no 값=" + case_no);
		CaseDTO caseDTO = new CaseDTO();

		caseDTO = sqlSession.selectOne("getCaseInfo", case_no);
		System.out.println("CaseDAO의 caseDTO 값=" + caseDTO);

		return caseDTO;
	}
	// Case 상세정보 가져오기 ------------------------------------------------------------------------
	
	// Case 정보 수정하기 ---------------------------------------------------------
	public void updateCase(CaseDTO caseDTO) {
		sqlSession.update("p_case.updateCase", caseDTO);
	}
	// Case 정보 수정하기 ---------------------------------------------------------
	
	// Case 정보 입력하기 ------------------------------------------------------------------------
	public void insertCase(CaseDTO caseDTO) {
		sqlSession.insert("p_case.insertCase", caseDTO);
	}
	// Case 정보 입력하기 ------------------------------------------------------------------------
	
	// Case 정보 삭제하기 -------------------------------------------------------------------------
	public void deleteCase(int case_no) {
		sqlSession.delete("p_case.deleteCase", case_no);
	}
	// Case 정보 삭제하기 -------------------------------------------------------------------------
	

	public List<CaseDTO> getCaseList(int caseLeng) {
		return sqlSession.selectList("p_case.caseList", caseLeng);
	}
}