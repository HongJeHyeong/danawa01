package com.database.p_ram.dto;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("ramDTO")
public class RamDTO {
  private int ram_no;
  private String ram_name;
  private String ram_company;
  private int ram_volume;
  private int ram_clock;
  private String ram_regdate;
  private int ram_status;
  private int ram_price;
  private String ram_image;
}