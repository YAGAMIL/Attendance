package com.aku.attendance.common.base.constant;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * Description:消息返回类 Program:Attendance Created on 2019-03-19 11:29
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Data
@NoArgsConstructor
public class ResultBean<T> implements Serializable {
  private static final long serialVersionUID = 1L;

  private static final int SUCCESS = 0;

  private String message = "SUCCESS";

  private int code = SUCCESS;

  private T data;

  private <T> ResultBean(Integer code, String message, T data) {}

  public static <T> ResultBean of(T data) {
    return new ResultBean(ResultEnum.SUCCESS.getCode(), ResultEnum.SUCCESS.getMessage(), data);
  }
  //  private static final int SUCCESS = 0;
  //+-
  //  private static final int FAIL = -1;
  //
  //  private String message = "SUCCESS";
  //
  //  private int code = SUCCESS;
  //
  //  private ResultEnum resultEnum;
}
