package com.database.p_disk.dto;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
@Alias("diskDTO")
public class DiskDTO {
    private int disk_no;
    private String disk_category;
    private String disk_name;
    private String disk_company;
    private String disk_type;
    private int disk_volume;
    private String disk_regdate;
    private int disk_stock;
    private int disk_price;
    private String disk_image;
}