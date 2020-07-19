package com.database.p_cooler.dto;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
@Alias("coolerDTO")
public class CoolerDTO {
    private int cooler_no;
    private String cooler_name;
    private String cooler_company;
    private String cooler_type;
    private String cooler_regdate;
    private int cooler_stock;
    private int cooler_price;
    private int cooler_image;
}