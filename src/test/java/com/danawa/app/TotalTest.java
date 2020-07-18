package com.danawa.app;

import javax.sql.DataSource;

import com.database.board.dao.BoardDAO;
import com.database.board_disk.dao.Board_diskDAO;
import com.database.board_reply.dao.Board_repDAO;
import com.database.member.dao.MemberDAO;
import com.database.notice.dao.NoticeDAO;
import com.database.orderlist.dao.OrderlistDAO;
import com.database.p_case.dao.CaseDAO;
import com.database.p_cooler.dao.CoolerDAO;
import com.database.p_cpu.dao.CpuDAO;
import com.database.p_disk.dao.DiskDAO;
import com.database.p_gcard.dao.GcardDAO;
import com.database.p_mainboard.dao.MainboardDAO;
import com.database.p_power.dao.PowerDAO;
import com.database.p_ram.dao.RamDAO;
import com.database.qna.dao.QnaDAO;
import com.database.qna_reply.dao.Qna_repDAO;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
    "file:src/main/webapp/WEB-INF/spring/userContext/dao-context.xml" })
@Transactional
@Ignore
public class TotalTest {

  @Setter(onMethod_ = { @Autowired })
  protected DataSource dataSource;

  @Setter(onMethod_ = { @Autowired })
  protected SqlSessionFactory sqlSessionFactory;

  @Autowired
  protected SqlSessionTemplate sqlSession;

  @Autowired
  protected BoardDAO boardDAO;

  @Autowired
  protected Board_diskDAO board_diskDAO;

  @Autowired
  protected Board_repDAO board_repDAO;

  @Autowired
  protected MemberDAO memberDAO;

  @Autowired
  protected NoticeDAO noticeDAO;

  @Autowired
  protected OrderlistDAO orderlistDAO;

  @Autowired
  protected QnaDAO qnaDAO;

  @Autowired
  protected Qna_repDAO qna_repDAO;

  @Autowired
  protected CaseDAO p_casedDao;

  @Autowired
  protected CoolerDAO p_coolerDAO;

  @Autowired
  protected CpuDAO p_CpuDAO;

  @Autowired
  protected DiskDAO p_diskDAO;

  @Autowired
  protected GcardDAO p_gcardDAO;

  @Autowired
  protected MainboardDAO p_mainboardDAO;

  @Autowired
  protected PowerDAO p_powerDAO;

  @Autowired
  protected RamDAO p_ramDAO;

}