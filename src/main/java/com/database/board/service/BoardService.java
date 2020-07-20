package com.database.board.service;

import java.util.ArrayList;

import com.danawa.util.PageUtil;
import com.database.board.dao.BoardDAO;
import com.database.board.dto.BoardDTO;

import com.database.board.dao.BoardDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {

  @Autowired
  private BoardDAO boardDAO;

  /////////// ------- 이 아래로 작성하세요 -------////////////////////////////

  // 글목록조회
  public ArrayList<BoardDTO> getList(PageUtil pageInfo) {
    // 실행하고자하는 쿼리문 where rno BETWEEN #{start} AND #{end}이므로
    // 필요한 정보를 완성해서 보내야 한다
    // #{start} : 보고싶은페이지에서의 시작글번호
    // #{end} : 보고싶은페이지에서의 종료글번호
    // 한페이지당 출력하는 글개수를 3개로 지정한 상태
    // 보고싶은페이지 start end
    // 1 1 3
    // 2 4 6
    int start = (pageInfo.getNowPage() - 1) * pageInfo.getLineCount() + 1;
    int end = start + pageInfo.getLineCount() - 1;

    // 실행하게 되는 SQL문에서 파라미터는 BoardDTO로 받기로 했으므로
    BoardDTO bDto = new BoardDTO();
    bDto.setStart(start);
    bDto.setEnd(end);

    ArrayList<BoardDTO> list = boardDAO.getList(bDto);
    return list;
  }

  // 글목록조회를 위한 페이지정보구하기
  public PageUtil getPageInfo(int nowPage) {
    // 필수적인 정보(총 게시물수)가 필요하다
    int totalCount = boardDAO.getTotalCnt();

    PageUtil pageInfo = new PageUtil(nowPage, totalCount);
    // PageUtil(보고싶은페이지, 총게시물수, 한페이지당 출력하는 글개수, 페이지블록);
    // PageUtil(int nowPage, int totalCount, int lineCount, int pageGroup) {
    // PageUtil pageInfo = new PageUtil(nowPage, totalCount, 3, 5);

    return pageInfo;
  }
}