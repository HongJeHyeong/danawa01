package com.danawa.app;

import static org.junit.Assert.fail;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class BeanServiceTest extends TotalTest {

	@Test
	public void testBeanService() {
		System.out.println("---------------" + "service 함수 테스트");
		try {
			log.info("boardService" + "\t" + boardService.hashCode());
			log.info("board_diskService" + "\t" + board_diskService.hashCode());
			log.info("board_repService" + "\t" + board_repService.hashCode());
			log.info("memberService" + "\t" + memberService.hashCode());
			log.info("noticeService" + "\t" + noticeService.hashCode());
			log.info("orderlistService" + "\t" + orderlistService.hashCode());
			log.info("qnaService" + "\t" + qnaService.hashCode());
			log.info("qna_repService" + "\t" + qna_repService.hashCode());
		} catch (final Exception e) {
			fail(e.getMessage());
		}

	}

}