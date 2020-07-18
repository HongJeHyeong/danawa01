package com.database.p_ram.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RamDTO {
  private String ram_name;
  private String ram_company;
  private int ram_volume;
  private int ram_clock;
  private String ram_regdate;
  private int ram_status;
  private int ram_price;
  private String ram_image;
}