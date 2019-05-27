package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import lombok.experimental.Accessors;

/**
 * Description:用户角色关系 Created on 2019/4/3 0003 20:55
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@TableName("user_role")
@ApiModel(description = "角色关系", parent = BaseModel.class)
public class UserRole extends BaseModel {
  private Long userId;

  private Long roleId;

  private static final long serialVersionUID = 1L;
}
