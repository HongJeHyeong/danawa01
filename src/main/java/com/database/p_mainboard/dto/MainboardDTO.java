package com.database.p_mainboard.dto;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("mainboardDTO")
public class MainboardDTO {
  private int mb_no;
  private String mb_name;
  private String mb_company;
  private String mb_socket;
  private String mb_chipset;
  private int mb_ramslot;
  private String mb_regdate;
  private int mb_status;
  private int mb_price;
  private String mb_image;
}