package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * Description:消息 Created on 2019/4/3 0003 20:42
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@NoArgsConstructor
@TableName("message")
public class Message extends BaseModel {

  /** 用户id */
  private Long userId;

  /** 角色 */
  private Integer role;

  /** 是否已读，1已读，0未读，默认0 */
  private Integer isRead;

  /** 消息：时间+发起人名字 */
  private String message;

  private static final long serialVersionUID = 1L;
}
