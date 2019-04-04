package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

/**
 * Description: 审批表 Created on 2019/4/3 0003 20:33
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@NoArgsConstructor
@TableName("approval")
public class Approval extends BaseModel {

  /** 实习生id */
  private Long userId;

  /** 导师id */
  private Long tutorId;

  /** 考勤记录id */
  private Long attendanceRecordId;

  /** 忘打卡时间 */
  private Date forgetTime;

  /** 0签到，1签退，忘打卡类型 */
  private Integer forgetType;

  /** 申请时间 */
  private Date applyTime;

  /** 审批状态0未处理，1已处理 */
  private Integer approvalStatus;

  /** 审批类型 0忘打卡，1月度审批 */
  private Integer approvalType;

  /** 是否已经处理 0 该实习生处理了 1 该导师处理了 */
  private Integer confirm;

  private static final long serialVersionUID = 1L;
}
