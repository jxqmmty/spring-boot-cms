package com.bilibili;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.bilibili.mapper")
public class CmsApp {
    public static void main(String[] args) {
        SpringApplication.run(CmsApp.class,args);
    }
}
