package com.aku.attendance.system.dao;

import com.aku.attendance.common.model.Approval;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * Description:审批dao层 Created on 2019/4/3 0003 19:54
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Mapper
public interface ApprovalDao extends BaseMapper<Approval> {}
