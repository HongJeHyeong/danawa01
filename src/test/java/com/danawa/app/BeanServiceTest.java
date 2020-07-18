package com.danawa.app;

import static org.junit.Assert.fail;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class BeanServiceTest extends TotalTest {

  @Test
  public void testBeanService() {
    System.out.println("---------------" + "각 테이블 hashcode");
    try {
      log.info(boardService.hashCode());
      log.info(board_diskService.hashCode());
      log.info(board_repService.hashCode());
      log.info(memberService.hashCode());
      log.info(noticeService.hashCode());
      log.info(orderlistService.hashCode());
      log.info(qnaService.hashCode());
      log.info(qna_repService.hashCode());
    } catch (final Exception e) {
      fail(e.getMessage());
    }

  }

}