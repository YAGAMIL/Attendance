package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.time.LocalDateTime;

/**
 * Description:签退信息 Created on 2019/4/3 0003 20:55
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@TableName("sign_out")
@ApiModel(description = "签退信息", parent = BaseModel.class)
public class SignOut extends BaseModel {

  /** 打卡人id */
  private Long userId;

  /** 打卡人姓名 */
  private String username;

  /** 签退时间 */
  private LocalDateTime signOutTime;

  /** 是否早退0正常，1早退 */
  private Integer early;

  /** 工作区域名/打卡地址 */
  private String workArea;

  /** 工作区域id */
  private Long workAreaId;

  private static final long serialVersionUID = 1L;
}
