package com.database.qna.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QnaDTO {

    private int qna_no;
    private int desc;
    private String qna_title;
    private String qan_content;
    private String qna_regdate;
    private int fk_member_no;
    private int qna_reply_cnt;
    private String writer;

}