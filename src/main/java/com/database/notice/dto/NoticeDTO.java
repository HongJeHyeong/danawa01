package com.database.notice.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.ToString;
import lombok.Setter;

@Getter
@Setter
@ToString
@Alias("noticeDTO")
public class NoticeDTO {
	
	private int notice_no,start,end;	
	private String notice_title,notice_content,notice_image;
	private Date notice_regdate,notice_enddate;
}