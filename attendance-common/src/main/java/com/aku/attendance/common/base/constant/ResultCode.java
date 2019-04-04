package com.aku.attendance.common.base.constant;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;

/**
 * Description:返回code Program:Attendance Created on 2019-03-19 15:04
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class ResultCode {
  private static final int SUCCESS = 200;
  private static final int FAIL = 500;

  public static int judgeCode(Boolean flag) {
    return flag ? SUCCESS : FAIL;
  }
}
