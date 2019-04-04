package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.math.BigDecimal;

/**
 * Description:信息查阅 Created on 2019/4/3 0003 20:55
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@TableName("work_area")
@ApiModel(description = "办公区域", parent = BaseModel.class)
public class WorkArea extends BaseModel {

  /** 办公区域名称 */
  private String workAreaName;

  /** 公司id */
  private Integer companyId;

  /** 管理者 */
  private String manager;
  /** 纬度 */
  private BigDecimal latitude;

  /** 经度 */
  private BigDecimal longitude;

  /** 省 */
  private String province;

  /** 市 */
  private String city;

  /** 区 */
  private String region;

  /** 地址 */
  private String address;

  /** 打卡范围设定--原来是range_setting */
  private Integer scope;

  private static final long serialVersionUID = 1L;
}
