package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonIgnore;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * Description:用户实体类 Created on 2019/3/19 0019 20:22
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@TableName("user")
@ApiModel(description = "用户", parent = BaseModel.class)
public class User extends BaseModel {

  private static final long serialVersionUID = 1L;

  @TableField(select = false)
  @ApiModelProperty("工号")
  private String account;

  /** 上级id */
  @ApiModelProperty("上级id")
  private Long superId;

  /** 用户姓名 */
  @ApiModelProperty("姓名")
  private String username;

  /** 身份证号 */
  @ApiModelProperty("身份证号")
  private String identify;

  /** 手机号 */
  @ApiModelProperty("手机号")
  private String phone;

  /** 邮箱 */
  @ApiModelProperty("邮箱")
  private String email;

  /** 性别0女，1男 */
  @ApiModelProperty("性别 女true男false")
  private Boolean gender;

  /** 年龄 */
  @ApiModelProperty("年龄")
  private Integer age;

  /** 密码 */
  @JsonIgnore
  @ApiModelProperty("密码")
  private String password;

  /** 盐值 */
  @JsonIgnore
  @ApiModelProperty("盐值")
  private String salt;

  /** 公司id */
  @ApiModelProperty("公司id")
  private Long companyId;

  /** 工作区域id */
  @ApiModelProperty("工作区域id")
  private Long workAreaId;

  /** 入职日期 */
  @ApiModelProperty("入职时间")
  private Date joinTime;

  /** 离职日期 */
  @ApiModelProperty("离职时间")
  private Date leaveTime;
}