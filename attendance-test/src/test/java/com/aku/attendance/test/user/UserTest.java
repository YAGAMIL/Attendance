package com.aku.attendance.test.user;

import com.aku.attendance.common.model.User;
import com.aku.attendance.common.utils.EmailUtils;
import com.aku.attendance.system.service.IUserService;
import com.aku.attendance.test.ApiApplicationTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Description:用户测试类 Program:Attendance Created on 2019-04-04 19:36
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
public class UserTest extends ApiApplicationTest {

  @Autowired private IUserService userService;
  @Autowired private EmailUtils emailUtils;

  @Test
  public void select() {
    userService.checkUser(new User());
  }

  @Test
  public void mailSend() {
    String sendTo = "2363753055@qq.com";
    emailUtils.sendSimpleMail(sendTo,"777","4444444");
    emailUtils.sendTemplateMail(sendTo,"666");
  }
}
