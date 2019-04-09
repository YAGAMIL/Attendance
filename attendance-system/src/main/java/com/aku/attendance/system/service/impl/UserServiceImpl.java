package com.aku.attendance.system.service.impl;

import com.aku.attendance.common.model.User;
import com.aku.attendance.system.dao.UserDao;
import com.aku.attendance.system.service.IUserService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.TableFieldInfo;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * Description:用户业务实现 Program:Attendance Created on 2019-03-19 18:03
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserDao, User> implements IUserService {
  @Override
  public boolean newStaff(User user) {
    return checkUser(user) && save(user);
  }

  @Override
  public boolean modifyUser(User user) {
    return checkUser(user) && updateById(user);
  }

  @Override
  public boolean checkUser(User user) {
    QueryWrapper<User> queryWrapper = new QueryWrapper<>();
    queryWrapper
        .lambda()
        .eq(User::getEmail, user.getEmail())
        .or()
        .eq(User::getPhone, user.getPhone())
        .or()
        .eq(User::getIdentify, user.getIdentify());
    return count(queryWrapper) <= 0;
  }

  private QueryWrapper buildField(QueryWrapper<User> queryWrapper) {
    QueryWrapper<User> wrapper = new QueryWrapper<>();
    User user = new User();
    user.setAccount("777");
    user.setAge(18);
    user.setEmail("555");
    wrapper.setEntity(user);
    wrapper.select(TableFieldInfo::isSelect);
    return wrapper;
  }
}
