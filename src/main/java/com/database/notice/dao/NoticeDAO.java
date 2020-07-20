package com.database.notice.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.danawa.util.PageUtil;
import com.database.notice.dto.NoticeDTO;

public class NoticeDAO extends SqlSessionDaoSupport {

  @Autowired
  private SqlSessionTemplate sqlSession;

public ArrayList noticeList(PageUtil pageInfo) {
	// TODO Auto-generated method stub
	int start =(pageInfo.getNowPage()-1)*pageInfo.getLineCount()+1; 
	int end = start+pageInfo.getLineCount() - 1;
	//실행하게 되는 SQL문에서 파라미터는 BoardDTO로 받기로 했으므로 만들어서 보낸다.
	NoticeDTO nDTO = new NoticeDTO();
	nDTO.setStart(start);
	nDTO.setEnd(end);
	System.out.println("start = "+start);
	System.out.println("end = "+end);
	ArrayList list=(ArrayList)sqlSession.selectList("notice.list",nDTO);
	return list;
}

public int getTotalCnt() {
	// TODO Auto-generated method stub
	int cnt=sqlSession.selectOne("notice.countAll");
	return cnt;
}

}