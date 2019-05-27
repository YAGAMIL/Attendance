package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import lombok.experimental.Accessors;

/**
 * Description:用户实体类 Created on 2019/3/19 0019 20:22
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@TableName("user")
@ApiModel(description = "用户", parent = BaseModel.class)
public class UserArea extends BaseModel {
  /** 工作区域id */
  private Long workAreaId;

  /** 用户id */
  private Long userId;

  private static final long serialVersionUID = 1L;
}
