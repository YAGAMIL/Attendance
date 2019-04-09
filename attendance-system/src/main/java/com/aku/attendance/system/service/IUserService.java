package com.aku.attendance.system.service;

import com.aku.attendance.common.model.User;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * Description: 用户业务接口 Program:Attendance Created on 2019-03-19 09:51
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo/a>
 * @version 1.0
 */
public interface IUserService extends IService<User> {

  /**
   * Author: Tablo
   *
   * <p>Description:[新增员工]
   *
   * <p>Created on 16:11 2019/4/8 0008
   *
   * @param user 新员工信息
   * @return boolean
   */
  boolean newStaff(User user);

  /**
   * Author: Tablo
   *
   * <p>Description:[修改用户信息]
   *
   * <p>Created on 16:19 2019/4/8 0008
   *
   * @param user 新的用户信息
   * @return boolean
   */
  boolean modifyUser(User user);

    /**
     * Author: Tablo
     *
     * <p>Description:[判定合法性]
     *
     * <p>Created on 15:09 2019/4/5 0005
     *
     * @param user 用户信息
     * @return boolean
     */
    boolean checkUser(User user);
}
