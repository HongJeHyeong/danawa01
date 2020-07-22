package com.database.board.cart;

import java.util.ArrayList;
import java.util.List;

import lombok.Getter;

@Getter
public class Cart {

    private int fk_member_no;
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

    private String cpu_name;
    private String mb_name;
    private String ram_name;
    private String case_name;
    private String power_name;
    private String cooler_name;
    private String gc_name;

    private List<Cart_disk> disklist;

    public Cart() {
        disklist = new ArrayList<Cart_disk>();
    }

    public void setCpu(int cpu_no, String cpu_name, int cpu_price) {
        this.fk_cpu_no = cpu_no;
        this.cpu_name = cpu_name;
        this.assem_cpu_price = cpu_price;

    }

    public void setCase(int case_no, String case_name, int case_price) {
        this.fk_case_no = case_no;
        this.case_name = case_name;
        this.assem_case_price = case_price;

    }

    public void setCooler(int cooler_no, String cooler_name, int cooler_price) {
        this.fk_cooler_no = cooler_no;
        this.cooler_name = cooler_name;
        this.assem_cooler_price = cooler_price;

    }

    public void setGc(int gc_no, String gc_name, int gc_price) {
        this.fk_gc_no = gc_no;
        this.gc_name = gc_name;
        this.assem_gc_price = gc_price;

    }

    public void setMb(int mb_no, String mb_name, int mb_price) {
        this.fk_mb_no = mb_no;
        this.mb_name = mb_name;
        this.assem_mb_price = mb_price;

    }

    public void setPower(int power_no, String power_name, int power_price) {
        this.fk_power_no = power_no;
        this.power_name = power_name;
        this.assem_power_price = power_price;

    }

    public void setRam(int ram_no, String ram_name, int ram_price) {
        this.fk_ram_no = ram_no;
        this.ram_name = ram_name;
        this.assem_ram_price = ram_price;
        this.assem_ram_count = 1;
    }

    public void addRamCount(int ram_count) {

        assem_ram_count += ram_count;

        if (assem_ram_count < 1) {
            fk_ram_no = -1;
            ram_name = null;
            assem_ram_count = -1;
            assem_ram_price = -1;
        }
    }

    public void setDisk(Cart_disk c_disk) {

        boolean isNew = true;

        if (disklist == null) {
            disklist = new ArrayList<Cart_disk>();
        }

        // 1. 기존에 담긴 물건인지 찾아본다
        for (int i = 0; i < disklist.size(); i++) {
            if (disklist.get(i).getB_d_no() == c_disk.getB_d_no()) {

                // 1-1기존에 담긴물건이면, 갯수 더한다.

                int temp = disklist.get(i).getB_d_count();
                temp += c_disk.getB_d_count();

                if (temp < 1) {
                    disklist.remove(i);
                } else {
                    disklist.get(i).setB_d_count(temp);
                }
                isNew = false;
                break; // for문 빠져간다.
            }
        }
        // 2. 기존에 안담긴 물건
        if (isNew) {
            Cart_disk temp_disk = new Cart_disk();
            temp_disk.setB_d_no(c_disk.getB_d_no());
            temp_disk.setB_d_count(1);
            temp_disk.setB_d_price(c_disk.getB_d_price());
            temp_disk.setDisk_name(c_disk.getDisk_name());
            disklist.add(temp_disk);
        }
    }

    public void clearCart() {
        fk_member_no = -1;
        fk_cpu_no = -1;
        assem_cpu_price = -1;
        fk_mb_no = -1;
        assem_mb_price = -1;
        fk_ram_no = -1;
        assem_ram_count = -1;
        assem_ram_price = -1;
        fk_case_no = -1;
        assem_case_price = -1;
        fk_power_no = -1;
        assem_power_price = -1;
        fk_gc_no = -1;
        assem_gc_price = -1;
        fk_cooler_no = -1;
        assem_cooler_price = -1;
        assem_total_price = -1;
        cpu_name = null;
        mb_name = null;
        ram_name = null;
        case_name = null;
        power_name = null;
        cooler_name = null;
        gc_name = null;

        if (disklist != null) {
            for (int i = 0; i < disklist.size(); i++) {
                disklist.remove(i);
            }
        }
    }

}