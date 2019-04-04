package com.aku.attendance.system.service.impl;

import com.aku.attendance.common.model.Role;
import com.aku.attendance.system.dao.RoleDao;
import com.aku.attendance.system.service.IRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * Description: Program:Attendance Created on 2019-03-19 20:34
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleDao, Role> implements IRoleService {}
