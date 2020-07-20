package com.database.member.dao;

import java.util.HashMap;
import java.util.List;

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

public void inputMem(MemberDTO dto) {
	// TODO Auto-generated method stub
	sqlSession.insert("member.inputMem", dto);
}

public MemberDTO mypage(String id) {
	// TODO Auto-generated method stub
	MemberDTO result = sqlSession.selectOne("member.myPage",id);
	return result;
}

public List memberList() {
	// TODO Auto-generated method stub
	List list = sqlSession.selectList("member.memberList");
	return list;
}

public void modify(MemberDTO dto) {
	// TODO Auto-generated method stub
	sqlSession.update("member.modify",dto);
	System.out.println("모디파이sql에 다녀옴");
}



}