package com.aku.attendance.system.service.impl;

import com.aku.attendance.common.model.User;
import com.aku.attendance.system.dao.UserDao;
import com.aku.attendance.system.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * Description:用户业务实现 Program:Attendance Created on 2019-03-19 18:03
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserDao, User> implements IUserService {}
