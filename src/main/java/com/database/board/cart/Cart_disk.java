package com.database.board.cart;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Cart_disk {

    private int b_d_no;
    private int fk_disk_no;
    private String disk_name;
    private int b_d_count;
    private int b_d_price;

}