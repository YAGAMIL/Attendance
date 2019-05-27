package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.time.LocalTime;

/**
 * Description:规则表 Created on 2019/4/3 0003 20:53
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@TableName("rule")
@ApiModel(description = "考勤规则", parent = BaseModel.class)
public class Rule extends BaseModel {

  /** 应签到时间 */
  private LocalTime signInTime;

  /** 应签退时间 */
  private LocalTime signOutTime;

  /** 半天考勤标准 */
  private Integer halfDay;

  /** 一天考勤标准 */
  private Integer allDay;

  /** 最小考勤单位 */
  private Double minUnit;

  /** 提交时间,表示每个月的几号 */
  private Integer submitTime;

  private static final long serialVersionUID = 1L;
}
