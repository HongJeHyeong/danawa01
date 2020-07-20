package com.database.member.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
@Alias("memberDTO")
public class MemberDTO {
	private int member_no,member_grade;
	private String member_id,member_pw,member_name,member_email,member_tel1,member_tel2,member_tel3,member_addr,member_addr2;
	private Date member_regdate;
	
}