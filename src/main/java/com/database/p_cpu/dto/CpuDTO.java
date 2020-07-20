package com.database.p_cpu.dto;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("cpuDTO")
public class CpuDTO {
  private int cpu_no;
  private String cpu_name;
  private String cpu_company;
  private double cpu_clock;
  private int cpu_core;
  private int cpu_thread;
  private String cpu_socket;
  private int cpu_graphic;
  private int cpu_cooler;
  private String cpu_regdate;
  private int cpu_status;
  private int cpu_price;
  private String cpu_image;
}