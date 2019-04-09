package com.aku.attendance.common.base.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * Description:实体类基类 Program:Attendance Created on 2019-03-19 09:48
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Data
@ApiModel
public class BaseModel implements Serializable {

  private static final long serialVersionUID = 1L;

  /** 主键id */
  @TableId(type = IdType.AUTO)
  private Long id;

  /** 创建时间 */
  private LocalDateTime createTime;

  /** 创建人 */
  private String createUser;

  /** 更改时间 */
  private LocalDateTime updateTime;

  /** 更改人 */
  private String updateUser;

  /** 是否有效0无效，1有效 */
  @TableLogic private Boolean isDelete;
}
