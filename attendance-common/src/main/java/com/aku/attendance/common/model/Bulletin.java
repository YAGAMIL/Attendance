package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.time.LocalDateTime;

/**
 * Description: 公告表 Created on 2019/4/3 0003 20:30
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@NoArgsConstructor
@TableName("announcement")
public class Bulletin extends BaseModel {

  /** 标题 */
  private String title;

  /** 公告内容 */
  private String content;

  /** 发布人id */
  private Long managerId;

  private LocalDateTime createTime;

  private static final long serialVersionUID = 1L;
}
