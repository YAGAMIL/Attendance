package com.aku.attendance.common.utils;

import org.springframework.util.DigestUtils;

import java.util.UUID;

/**
 * Description:密码加密工具类 Program:Attendance Created on 2019-04-08 17:02
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
public class PaswordUtils {
  /**
   * Author: Tablo
   *
   * <p>Description:[生成加密密码]
   *
   * <p>Created on 17:03 2019/4/8 0008
   *
   * @param password 原始密码
   * @return java.lang.String
   */
  public static String encryptedPassword(String password, String salt) {
    return DigestUtils.md5DigestAsHex((password + salt).getBytes());
  }

  public static String getSalt() {
    return UUID.randomUUID().toString();
  }
}
