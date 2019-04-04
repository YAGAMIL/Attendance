package com.aku.attendance.common.base.constant;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * Description:返回枚举 Program:Attendance Created on 2019-03-19 11:51
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Getter
@AllArgsConstructor
public enum ResultEnum {
  // 返回结果
  SUCCESS(200, "成功"),
  FAIL(500, "失败");

  private Integer code;
  private String message;

  public static ResultEnum judgeResult(Boolean flag) {
    return flag ? SUCCESS : FAIL;
  }
}
