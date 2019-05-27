package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.time.LocalDate;

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
@TableName("official_holiday")
public class OfficialHoliday extends BaseModel {
  /** 0上班，1休息 */
  private Integer recordStatus;

  /** 每月日期 */
  private LocalDate recordTime;

  private static final long serialVersionUID = 1L;
}
