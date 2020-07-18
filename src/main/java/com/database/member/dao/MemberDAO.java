package com.database.member.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.database.member.dto.MemberDTO;

public class MemberDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;

public HashMap loginProc(HashMap map) {
	// TODO Auto-generated method stub
	
	System.out.println("MemberDAO-loginProc()id="+map.get("member_id"));
	System.out.println("MemberDAO-loginProc()pw="+map.get("mebmer_pw"));
	HashMap result =(HashMap)sqlSession.selectOne("member.loginProc",map);
	System.out.println("login 성공???");
	return result;
}

public int IdCheck(String id) {
	// TODO Auto-generated method stub
	int result=sqlSession.selectOne("member.IdCheck", id);
	return result;
}

public void inputForm(MemberDTO dto) {
	// TODO Auto-generated method stub
	sqlSession.insert("member.inputForm", dto);
}



}