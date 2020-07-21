package com.database.board.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardDTO {
    private int board_no;
    private int fk_member_no;
    private String board_title;
    private String board_content;
    private String board_regdate;
    private int board_read_count;
    private int fk_cpu_no;
    private int assem_cpu_price;
    private int fk_mb_no;
    private int assem_mb_price;
    private int fk_ram_no;
    private int assem_ram_count;
    private int assem_ram_price;
    private int fk_case_no;
    private int assem_case_price;
    private int fk_power_no;
    private int assem_power_price;
    private int fk_gc_no;
    private int assem_gc_price;
    private int fk_cooler_no;
    private int assem_cooler_price;
    private int assem_total_price;
    private int board_member_grade;
    private int board_hit;

    // private int b_d_no;
    // private int fk_disk_no;
    // private int b_d_count;
    // private int b_d_price;

    private int board_reply_no;
    private int board_reply_regdate;
    private int board_reply_content;

    private int start; // 시작글번호
    private int end; // 끝번호

    private int nowPage; // 현재페이지

}