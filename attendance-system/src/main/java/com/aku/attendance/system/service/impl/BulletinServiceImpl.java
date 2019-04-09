package com.aku.attendance.system.service.impl;

import com.aku.attendance.common.model.Bulletin;
import com.aku.attendance.system.dao.BulletinDao;
import com.aku.attendance.system.service.IBulletinService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * Description:公告业务实现 Program:Attendance Created on 2019-04-04 19:12
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Service
public class BulletinServiceImpl extends ServiceImpl<BulletinDao, Bulletin>
    implements IBulletinService {}
