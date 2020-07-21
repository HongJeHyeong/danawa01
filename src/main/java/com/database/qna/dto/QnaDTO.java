package com.database.qna.dto;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("qnaDTO")
public class QnaDTO {

    private int qna_no;
    private int desc;
    private String qna_title;
    private String qna_content;
    private String qna_regdate;
    private int fk_member_no;
    private int qna_reply_cnt;
    private String writer;
    
    private String member_id;
    
    private int start;
    private int end;

}