package com.database.p_case.dto;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
@Alias("caseDTO")
public class CaseDTO {
	private int case_no;
	private String case_name;
	private String case_company;
	private int case_gc_length;
	private String case_regdate;
	private int case_stock;
	private int case_price;
	private MultipartFile file;
	private String case_image;
}