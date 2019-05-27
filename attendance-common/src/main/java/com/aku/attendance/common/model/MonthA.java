package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.math.BigDecimal;

/**
 * Description:月度考勤 Created on 2019/4/3 0003 20:33
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@NoArgsConstructor
@TableName("month_a")
public class MonthA extends BaseModel {

  /** 实习生id */
  private Long userId;

  /** 导师id */
  private Long tutorId;

  /** 出勤天数 */
  private BigDecimal workday;

  /** 忘打卡天数 */
  private BigDecimal forgetDay;

  /** 迟到次数 */
  private Integer lateCount;

  /** 早退次数 */
  private Integer earlyCount;

  private Integer approvalType;

  /** 审批状态0未审批，1已审批 */
  private Integer approvalStatus;

  private static final long serialVersionUID = 1L;
}
