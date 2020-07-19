package com.database.p_power.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class PowerDTO {
    private int power_no;
    private String power_name;
    private String power_company;
    private int power_capacity;
    private String power_regdate;
    private int power_stock;
    private int power_price;
    private String power_image;
}