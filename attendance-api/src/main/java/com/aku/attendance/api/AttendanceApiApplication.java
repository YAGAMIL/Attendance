package com.aku.attendance.api;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;


/**
 * Description:程序启动类 Created on 2019/3/18 0018 16:33
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
//@EnableCaching
//@SpringBootApplication
@EnableAutoConfiguration
@MapperScan("com.aku.attendance.system.dao")
public class AttendanceApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(AttendanceApiApplication.class, args);
    }
}
