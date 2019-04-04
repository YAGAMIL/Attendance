package com.aku.attendance.api.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.request.async.DeferredResult;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * Description:Swagger配置 Program:Attendance Created on 2019-03-19 15:39
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Configuration
@EnableSwagger2
@ComponentScan("com.aku.attendance.api.controller")
public class SwaggerConfig {

  /** 创建API */
  @Bean
  public Docket createRestApi() {
    return new Docket(DocumentationType.SWAGGER_2)
        // 详细定制
        .apiInfo(apiInfo())
        .genericModelSubstitutes(DeferredResult.class)
        .select()
        // 指定当前包路径
        .apis(RequestHandlerSelectors.basePackage("com.aku.attendance.api.controller"))
        // 扫描所有
        // .apis(RequestHandlerSelectors.any())
        .paths(PathSelectors.any())
        .build();
  }

  /** 添加摘要信息 */
  private ApiInfo apiInfo() {
    // 用ApiInfoBuilder进行定制
    return new ApiInfoBuilder()
        .title("实习生考勤管理系统")
        .description("开发者主页：https://yagamil.github.io/Jhin/")
        .license("Tablo_Jhin")
        .licenseUrl("https://yagamil.github.io/Jhin")
        .version("1.0")
        .build();
  }
}
