package com.database.p_gcard.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class GcardDTO {
  private int gc_no;
  private String gc_name;
  private String gc_company;
  private String gc_chipset;
  private int gc_length;
  private int gc_min_power;
  private String gc_regdate;
  private int gc_status;
  private int gc_price;
  private String gc_image;
}