package com.aku.attendance.system.dao;

import com.aku.attendance.common.model.SignIn;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * Description:签到DAO Created on 2019/4/3 0003 22:08
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Mapper
public interface SignInDao extends BaseMapper<SignIn> {}
