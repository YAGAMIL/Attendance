package com.aku.attendance.framework.config;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * Description:Aop配置 Program:Attendance Created on 2019-04-11 09:28
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Slf4j
@Component
@Aspect
public class AopConfig {

  /**
   * Author: Tablo
   *
   * <p>Description:[定义切入点]
   *
   * <p>Created on 9:35 2019/4/11 0011
   */
  @Pointcut("execution(* com.aku.attendance.*.*(..))")
  public void allMethod() {}

  @Pointcut(
      "execution(* com.aku.attendance.service..*.create*(..)) "
          + "|| execution(* com.aku.attendance.service..*.add*(..))"
          + "|| execution(* com.aku.attendance.service..*.insert*(..))")
  public void createMethod() {}

  @Pointcut("execution(* com.aku.attendance.service..*.update*(..))")
  public void updateMethod() {}

  @Pointcut("execution(* com.aku.attendance.service..*.remove*(..))")
  public void removeMethod() {}

  @Before("createMethod()")
    public void createBefore(JoinPoint joinPoint){

  }

}
