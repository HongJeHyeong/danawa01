package com.database.board_disk.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Board_diskDTO {

  private int b_d_no;
  private int fk_board_no;
  private int fk_disk_no;
  private int b_d_count;
  private int b_d_price;

}