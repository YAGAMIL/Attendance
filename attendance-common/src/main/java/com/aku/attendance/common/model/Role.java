package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * Description:角色实体 Created on 2019/3/19 0019 20:47
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@TableName("role")
@ApiModel(description = "角色实体类", parent = BaseModel.class)
public class Role extends BaseModel {

  private static final long serialVersionUID = 1L;

  /** 角色名称 */
  private String roleName;

  /** 角色等级 */
  private Integer roleLevel;
}
