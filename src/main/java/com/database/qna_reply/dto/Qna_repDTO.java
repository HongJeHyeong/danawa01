package com.database.qna_reply.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Qna_repDTO {

    private int q_reply_no;
    private int q_reply_qna_no;
    private String q_reply_content;
    private String q_reply_regdate;

}