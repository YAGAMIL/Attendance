package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

/**
 * Description: 考勤记录表，记录签到签退 Created on 2019/4/3 0003 20:33
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@NoArgsConstructor
@TableName("attendance_record")
public class AttendanceRecord extends BaseModel {

  /** 签到id */
  private Long signInId;

  /** 签退id */
  private Long signOutId;

  /** 签到人id */
  private Long userId;

  /** 打卡状态，非正常-1、正常1，外出正常2，外出异常-2，出差3，出差异常-3 */
  private Integer signType;

  /** 是否补卡0为正常，1补卡 */
  private Integer supply;

  /** 工时 */
  private Integer workHours;

  private static final long serialVersionUID = 1L;
}
