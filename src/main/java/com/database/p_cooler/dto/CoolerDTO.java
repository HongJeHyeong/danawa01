package com.database.p_cooler.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
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