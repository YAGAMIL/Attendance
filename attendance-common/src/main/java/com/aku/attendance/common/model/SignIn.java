package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.time.LocalDateTime;

/**
 * Description:签到信息 Created on 2019/4/3 0003 20:55
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@TableName("sign_in")
@ApiModel(description = "签到信息", parent = BaseModel.class)
public class SignIn extends BaseModel {

  /** 签到人id */
  private Long userId;

  /** 签到人姓名 */
  private String username;

  /** 签到时间 */
  private LocalDateTime signInTime;

  /** 是否迟到 */
  private Integer late;

  /** 工作区域名称/打卡地址 */
  private String workArea;

  /** 工作区域id */
  private Long workAreaId;

  private static final long serialVersionUID = 1L;
}
