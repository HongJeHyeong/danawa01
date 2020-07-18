package com.danawa.app;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class DataSouceTest extends TotalTest {

	@Test
	public void testConnection() {
		System.out.println("---------------" + "커넥션풀 체크");
		try (Connection con = dataSource.getConnection()) {
			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

	@Test
	public void testMybatis() {
		System.out.println("---------------" + "sqlSession 체크");
		try (SqlSession session = sqlSessionFactory.openSession(); Connection con = dataSource.getConnection();) {
			log.info(session);
			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

	@Test
	public void testDBcountAll() {
		System.out.println("---------------" + "DB 각 테이블 count(*)");
		try {

			String[] tableName = { "board", "board_disk", "board_reply", "member", "notice", "orderlist", "p_case",
					"p_cooler", "p_cpu", "p_disk", "p_gcard", "p_mainboard", "p_power", "p_ram", "qna", "qna_reply" };

			for (int i = 0; i < tableName.length; i++) {
				int count = sqlSession.selectOne(tableName[i] + ".countAll");
				String tablename = tableName[i];
				tablename = tablename + "_____________________";
				tablename = tablename.substring(0, 20);

				System.out.println(tablename + count);
			}

		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}