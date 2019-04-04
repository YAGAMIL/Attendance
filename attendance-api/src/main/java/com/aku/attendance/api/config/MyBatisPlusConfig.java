package com.aku.attendance.api.config;

import com.baomidou.mybatisplus.core.injector.ISqlInjector;
import com.baomidou.mybatisplus.extension.injector.LogicSqlInjector;
import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.extension.plugins.PerformanceInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * Description:MyBatisPlus配置类 Program:Attendance Created on 2019-03-20 10:07
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@EnableTransactionManagement
@Configuration
public class MyBatisPlusConfig {

  /** 分页插件配置 */
  @Bean
  public PaginationInterceptor paginationInterceptor() {
    return new PaginationInterceptor();
  }

  /** 逻辑删除配置 */
  @Bean
  public ISqlInjector sqlInjector() {
    return new LogicSqlInjector();
  }

  /** SQL执行效率插件 */
  @Bean
  public PerformanceInterceptor performanceInterceptor() {
    return new PerformanceInterceptor().setFormat(true);
  }

}
