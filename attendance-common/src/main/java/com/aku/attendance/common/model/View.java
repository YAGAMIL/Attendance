package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * Description:信息查阅 Created on 2019/4/3 0003 20:55
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@TableName("view")
@ApiModel(description = "信息查阅", parent = BaseModel.class)
public class View extends BaseModel {

  /** 用户id */
  private Long userId;

  /** 对应角色 1导师，2管理员，3实习生 */
  private Integer role;

  /** 公告id */
  private Long announcementId;

  private static final long serialVersionUID = 1L;
}
