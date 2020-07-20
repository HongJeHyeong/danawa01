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
			log.info("boardDAO"+"\t"+boardDAO.hashCode());
			log.info("board_diskDAO"+"\t"+board_diskDAO.hashCode());
			log.info("board_repDAO"+"\t"+board_repDAO.hashCode());
			log.info("memberDAO"+"\t"+memberDAO.hashCode());
			log.info("noticeDAO"+"\t"+noticeDAO.hashCode());
			log.info("orderlistDAO"+"\t"+orderlistDAO.hashCode());
			log.info("qnaDAO"+"\t"+qnaDAO.hashCode());
			log.info("qna_repDAO"+"\t"+qna_repDAO.hashCode());
			log.info("p_CpuDAO"+"\t"+p_CpuDAO.hashCode());
			log.info("p_casedDao"+"\t"+p_casedDao.hashCode());
			log.info("p_coolerDAO"+"\t"+p_coolerDAO.hashCode());
			log.info("p_diskDAO"+"\t"+p_diskDAO.hashCode());
			log.info("p_gcardDAO"+"\t"+p_gcardDAO.hashCode());
			log.info("p_mainboardDAO"+"\t"+p_mainboardDAO.hashCode());
			log.info("p_powerDAO"+"\t"+p_powerDAO.hashCode());
			log.info("p_ramDAO"+"\t"+p_ramDAO.hashCode());
		} catch (Exception e) {
			fail(e.getMessage());
		}

	}

}