package com.danawa.app;

import static org.junit.Assert.fail;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class BeanDAOTest extends TotalTest {

	@Test
	public void testBeanDAO() {
		System.out.println("---------------" + "각 테이블 hashcode");
		try {
			log.info(boardDAO.hashCode());
			log.info(board_diskDAO.hashCode());
			log.info(board_repDAO.hashCode());
			log.info(memberDAO.hashCode());
			log.info(noticeDAO.hashCode());
			log.info(orderlistDAO.hashCode());
			log.info(qnaDAO.hashCode());
			log.info(qna_repDAO.hashCode());
			log.info(p_CpuDAO.hashCode());
			log.info(p_casedDao.hashCode());
			log.info(p_coolerDAO.hashCode());
			log.info(p_diskDAO.hashCode());
			log.info(p_gcardDAO.hashCode());
			log.info(p_mainboardDAO.hashCode());
			log.info(p_powerDAO.hashCode());
			log.info(p_ramDAO.hashCode());
		} catch (Exception e) {
			fail(e.getMessage());
		}

	}

}